document.addEventListener("DOMContentLoaded", () => {

    // ============================================================
    // 1. MATRIX RAIN EFFECT
    // ============================================================
    const canvas = document.getElementById("matrix-canvas");
    const ctx = canvas.getContext("2d");

    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;

    const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%&ROYALSCRIPT01";
    const fontSize = 14;
    const columns = Math.floor(canvas.width / fontSize);
    const drops = Array(columns).fill(1);

    function drawMatrix() {
        ctx.fillStyle = "rgba(3, 10, 5, 0.05)";
        ctx.fillRect(0, 0, canvas.width, canvas.height);
        ctx.fillStyle = "#0f0";
        ctx.font = `${fontSize}px Fira Code`;

        drops.forEach((y, i) => {
            const char = chars[Math.floor(Math.random() * chars.length)];
            ctx.fillText(char, i * fontSize, y * fontSize);
            if (y * fontSize > canvas.height && Math.random() > 0.975) drops[i] = 0;
            drops[i]++;
        });
    }

    setInterval(drawMatrix, 45);

    window.addEventListener("resize", () => {
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;
    });

    // ============================================================
    // 2. TYPEWRITER EFFECT
    // ============================================================
    const titleText = "PROGRAMME D'AUTOMATISATION";
    const typewriterElement = document.getElementById("typewriter-text");
    let i = 0;

    function typeWriter() {
        if (i < titleText.length) {
            typewriterElement.innerHTML += titleText.charAt(i);
            i++;
            setTimeout(typeWriter, 100);
        } else {
            typewriterElement.innerHTML += '<span style="animation: blink 1s step-end infinite;">_</span>';
        }
    }
    setTimeout(typeWriter, 500);

    // ============================================================
    // 3. SCROLL ANIMATION FOR CARDS
    // ============================================================
    const cards = document.querySelectorAll('.card');
    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry, index) => {
            if (entry.isIntersecting) {
                setTimeout(() => entry.target.classList.add('visible'), index * 150);
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.1 });
    cards.forEach(card => observer.observe(card));

    // ============================================================
    // 4. 3D TILT EFFECT FOR CARDS
    // ============================================================
    const tiltElements = document.querySelectorAll('.tilt-element');

    tiltElements.forEach(el => {
        el.addEventListener('mousemove', (e) => {
            if (window.innerWidth <= 768) return;
            const rect = el.getBoundingClientRect();
            const x = e.clientX - rect.left;
            const y = e.clientY - rect.top;
            const cx = rect.width / 2;
            const cy = rect.height / 2;
            const rX = ((y - cy) / cy) * -10;
            const rY = ((x - cx) / cx) * 10;

            // Spotlight effect
            const mx = ((x / rect.width) * 100).toFixed(1);
            const my = ((y / rect.height) * 100).toFixed(1);
            el.style.setProperty('--mouse-x', `${mx}%`);
            el.style.setProperty('--mouse-y', `${my}%`);

            el.style.transform = `perspective(1000px) rotateX(${rX}deg) rotateY(${rY}deg) scale3d(1.03, 1.03, 1.03)`;
        });

        el.addEventListener('mouseleave', () => {
            if (window.innerWidth <= 768) return;
            el.style.transition = 'transform 0.5s ease, box-shadow 0.3s ease, border-color 0.3s ease, background 0.3s ease';
            el.style.transform = `perspective(1000px) rotateX(0deg) rotateY(0deg) scale3d(1, 1, 1)`;
        });

        el.addEventListener('mouseenter', () => {
            if (window.innerWidth <= 768) return;
            el.style.transition = 'transform 0.1s ease, box-shadow 0.3s ease, border-color 0.3s ease, background 0.3s ease';
        });
    });

    // ============================================================
    // 5. SOUND EFFECTS (using Web Audio API - no external files needed)
    // ============================================================
    const AudioCtx = window.AudioContext || window.webkitAudioContext;
    let audioCtx = null;

    function ensureAudioCtx() {
        if (!audioCtx) audioCtx = new AudioCtx();
    }

    function playHoverSound() {
        try {
            ensureAudioCtx();
            const oscillator = audioCtx.createOscillator();
            const gainNode = audioCtx.createGain();
            oscillator.connect(gainNode);
            gainNode.connect(audioCtx.destination);
            oscillator.type = 'square';
            oscillator.frequency.setValueAtTime(800, audioCtx.currentTime);
            oscillator.frequency.exponentialRampToValueAtTime(400, audioCtx.currentTime + 0.1);
            gainNode.gain.setValueAtTime(0.08, audioCtx.currentTime);
            gainNode.gain.exponentialRampToValueAtTime(0.001, audioCtx.currentTime + 0.1);
            oscillator.start(audioCtx.currentTime);
            oscillator.stop(audioCtx.currentTime + 0.1);
        } catch (e) { /* Ignore audio errors */ }
    }

    function playClickSound() {
        try {
            ensureAudioCtx();
            const oscillator = audioCtx.createOscillator();
            const gainNode = audioCtx.createGain();
            oscillator.connect(gainNode);
            gainNode.connect(audioCtx.destination);
            oscillator.type = 'sawtooth';
            oscillator.frequency.setValueAtTime(1200, audioCtx.currentTime);
            oscillator.frequency.exponentialRampToValueAtTime(200, audioCtx.currentTime + 0.2);
            gainNode.gain.setValueAtTime(0.15, audioCtx.currentTime);
            gainNode.gain.exponentialRampToValueAtTime(0.001, audioCtx.currentTime + 0.2);
            oscillator.start(audioCtx.currentTime);
            oscillator.stop(audioCtx.currentTime + 0.2);
        } catch (e) { /* Ignore audio errors */ }
    }

    document.querySelectorAll('.sound-hover').forEach(el => {
        el.addEventListener('mouseenter', playHoverSound);
    });

    document.querySelectorAll('.sound-click').forEach(el => {
        el.addEventListener('click', playClickSound);
    });

    // ============================================================
    // 6. INTERACTIVE FAKE TERMINAL
    // ============================================================
    const terminalInput = document.getElementById('terminal-input');
    const terminalOutput = document.getElementById('terminal-output');

    // ── State machine for the login menu ────────────────────────
    // States: 'menu' | 'login_user' | 'login_pass' | 'register_user' | 'register_pass' | 'main_menu'
    let terminalState   = 'menu';
    let pendingUsername = '';

    // ── ASCII art screens ────────────────────────────────────────
    const SCREEN_WELCOME = [
        '',
        '  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
        '  @                                               @',
        '  @          BIENVENUE SUR ROYAL-SCRIPT           @',
        '  @                                               @',
        '  @...............................................@',
        '  .                                               .',
        '  .          1) SE CONNECTER                      .',
        '  .                                               .',
        '  .          2) CREER UN COMPTE                   .',
        '  .                                               .',
        '  .          3) FERMER LE PROGRAMME               .',
        '  .                                               .',
        '  .................................................',
        '',
    ];

    const SCREEN_MAIN_MENU = [
        '',
        '  ┌──────────────────────────────────────────────────────────────────────────────┐',
        '  │  OPTION DU SYSTEME          LA CYBERSECURITE       RESEAUX et Autres         │',
        '  ├──────────────────────────────────────────────────────────────────────────────┤',
        '  │  a) Mettre a jour la date   h) Hacker Wifi         n) IP de la machine       │',
        '  │  b) Mettre a jour l\'heure  i) Reparer disque       o) Ping                   │',
        '  │  c) Maintenance systeme     j) Meteo               p) Parametres Reseau      │',
        '  │  d) Mettre le PC a jour     k) Activer Windows     q) ...                    │',
        '  │  e) Eteindre l\'Ordinateur  l) Infos Systeme        r) ...                    │',
        '  │  f) Redemarer              m) Interface Hacker      s) ...                   │',
        '  │  g) Version du systeme                                                       │',
        '  ├──────────────────────────────────────────────────────────────────────────────┤',
        '  │  0) Verrouiller      00) Sortir       01) Suivant                            │',
        '  └──────────────────────────────────────────────────────────────────────────────┘',
        '',
    ];

    // ── Helpers ───────────────────────────────────────────────────
    function addLine(text, type = 'output') {
        const p = document.createElement('p');
        p.className = `cmd-${type}`;
        p.textContent = text;
        terminalOutput.appendChild(p);
        terminalOutput.scrollTop = terminalOutput.scrollHeight;
    }

    function addPromptLine(text) {
        const p = document.createElement('p');
        const prompt = document.createElement('span');
        prompt.className = 'prompt';
        prompt.textContent = '>>>>>> ';
        const cmd = document.createElement('span');
        cmd.className = 'cmd-line';
        cmd.textContent = text;
        p.appendChild(prompt);
        p.appendChild(cmd);
        terminalOutput.appendChild(p);
        terminalOutput.scrollTop = terminalOutput.scrollHeight;
    }

    async function printLines(lines, delay = 30) {
        for (const line of lines) {
            await new Promise(r => setTimeout(r, delay));
            addLine(typeof line === 'string' ? line : line.text,
                    typeof line === 'object'  ? line.type : 'output');
        }
    }

    function setPromptHint(hint) {
        const el = document.querySelector('.terminal-input-row .prompt');
        if (el) el.textContent = hint;
        terminalInput.focus({ preventScroll: true });
    }

    // ── Show welcome / login screen ───────────────────────────────
    async function showWelcomeScreen() {
        terminalOutput.innerHTML = '';
        terminalState = 'menu';
        await printLines(SCREEN_WELCOME, 25);
        addLine('NB : Rassurez-vous d\'executer le programme en tant qu\'Administrateur.', 'info');
        addLine('');
        setPromptHint('>>>>>> ');
    }

    // ── Main dispatcher ───────────────────────────────────────────
    async function processCommand(rawCmd) {
        const val = rawCmd.trim();
        addPromptLine(val);

        // ── menu principal (login screen) ──────────────
        if (terminalState === 'menu') {
            if (val === '3') {
                addLine('');
                addLine('Au revoir ! Téléchargez ROYAL-SCRIPT pour l\'utiliser en vrai.', 'info');
                setTimeout(showWelcomeScreen, 3000);
                return;
            }
            if (val === '1') {
                terminalState = 'login_user';
                addLine('');
                addLine('Nom d\'utilisateur :', 'info');
                setPromptHint('>>> ');
                return;
            }
            if (val === '2') {
                terminalState = 'register_user';
                addLine('');
                addLine('Veuillez saisir un nom d\'utilisateur :', 'info');
                setPromptHint('>>> ');
                return;
            }
            addLine('Choix invalide. Entrez 1, 2 ou 3.', 'error');
            return;
        }

        // ── login : saisie du nom d'utilisateur ────────
        if (terminalState === 'login_user') {
            if (!val) { addLine('Nom vide. Réessayez.', 'error'); return; }
            pendingUsername = val;
            terminalState = 'login_pass';
            addLine('Mot de passe :', 'info');
            terminalInput.type = 'password';
            return;
        }

        // ── login : saisie du mot de passe ─────────────
        if (terminalState === 'login_pass') {
            terminalInput.type = 'text';
            if (pendingUsername === 'admin' && val === '1234') {
                addLine('');
                addLine('✔ Connexion réussie ! Bienvenue ' + pendingUsername + '.', 'output');
                addLine('Chargement du menu principal...', 'info');
                setTimeout(async () => {
                    terminalOutput.innerHTML = '';
                    terminalState = 'main_menu';
                    await printLines(SCREEN_MAIN_MENU, 20);
                    addLine('Entrez une lettre (ex: a, b, c...) ou "00" pour quitter.', 'info');
                    setPromptHint('>>>> ');
                }, 1500);
            } else {
                addLine('');
                addLine('✘ Identifiants incorrects. (Indice : admin / 1234)', 'error');
                setTimeout(showWelcomeScreen, 2000);
            }
            return;
        }

        // ── inscription : saisie du nom ─────────────────
        if (terminalState === 'register_user') {
            if (!val || val.includes(' ')) {
                addLine('Nom invalide (pas d\'espaces autorisés). Réessayez.', 'error');
                return;
            }
            pendingUsername = val;
            terminalState = 'register_pass';
            addLine('Veuillez saisir un mot de passe :', 'info');
            terminalInput.type = 'password';
            return;
        }

        // ── inscription : saisie du mot de passe ────────
        if (terminalState === 'register_pass') {
            terminalInput.type = 'text';
            addLine('');
            addLine(`✔ Compte créé avec succès pour "${pendingUsername}".`, 'output');
            addLine('Veuillez vous connecter pour continuer.', 'info');
            setTimeout(showWelcomeScreen, 2000);
            return;
        }

        // ── menu principal (après connexion) ────────────
        if (terminalState === 'main_menu') {
            const menuResponses = {
                'a': ['[*] Ouverture de l\'outil de date...', '[OK] Date mise à jour avec succès.'],
                'b': ['[*] Ouverture de l\'outil d\'heure...', '[OK] Heure mise à jour avec succès.'],
                'c': ['[*] Lancement maintenance...', '[*] sfc /scannow...', '[*] DISM /RestoreHealth...', '[OK] Maintenance terminée. Redémarrage recommandé.'],
                'd': ['[*] winget upgrade --all...', '[UPDATE] 6 applications mises à jour.', '[OK] PC à jour !'],
                'e': ['[!] Extinction dans 10 secondes... (Simulation 😄)'],
                'f': ['[!] Redémarrage dans 10 secondes... (Simulation 😄)'],
                'g': ['[INFO] Windows 11 Pro — Version 23H2 (Build 22631)', '[INFO] ROYAL-SCRIPT v1.0'],
                'h': ['[*] Récupération des profils Wi-Fi...', '  MON_WIFI → Clé : ***** (caché)', '  LIVEBOX  → Clé : ***** (caché)', '[OK] Utilisez le vrai ROYAL-SCRIPT pour voir les clés !'],
                'i': ['[*] Lancement CHKDSK sur C:...', '██████████████████████████ 100%', '[OK] Disque réparé.'],
                'k': ['[*] Activation Windows & Office... (Simulation)'],
                'l': ['[INFO] CPU : Intel Core i7-12700H', '[INFO] RAM : 16 GB', '[INFO] Disque : SSD 512 GB', '[INFO] OS : Windows 11 Pro 23H2'],
                'm': ['[*] Interface Hacker activée... (Simulation)'],
                'n': ['[INFO] IP locale : 192.168.1.42', '[INFO] IP publique : ***.***.**.** (masquée)'],
                '00': null,
            };

            if (val === '00') {
                addLine('');
                addLine('Fermeture dans 3 secondes...', 'info');
                setTimeout(showWelcomeScreen, 3000);
                return;
            }

            const resp = menuResponses[val.toLowerCase()];
            if (resp === undefined) {
                addLine(`Commande "${val}" non reconnue. Entrez une lettre valide ou "00".`, 'error');
                return;
            }
            for (const line of resp) {
                await new Promise(r => setTimeout(r, 120));
                addLine(line);
            }
            addLine('');
            return;
        }
    }

    // ── Keyboard handler ──────────────────────────────────────────
    terminalInput.addEventListener('keydown', async (e) => {
        if (e.key === 'Enter') {
            const val = terminalInput.value;
            terminalInput.value = '';
            if (!val.trim() && terminalState === 'menu') return;
            playHoverSound();
            await processCommand(val);
        }
    });

    // ── Boot terminal on load ─────────────────────────────────────
    showWelcomeScreen();

    // ============================================================
    // 7. GLITCH TRIGGER PERIODICALLY ON LOGO
    // ============================================================
    function triggerGlitch() {
        const logo = document.querySelector('.logo.glitch-element');
        if (logo) {
            logo.style.animation = 'none';
            requestAnimationFrame(() => {
                logo.style.animation = '';
            });
        }
    }
    setInterval(triggerGlitch, 5000);

});
