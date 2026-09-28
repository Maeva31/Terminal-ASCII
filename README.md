# Terminal Fun

Petit ensemble d'outils et d'animations pour le terminal Windows.

## Lancement

Lance simplement :

```cmd
MENU_TERMINAL_FUN.cmd
```

## Contenu

| Fichier | Description |
|---|---|
| `MENU_TERMINAL_FUN.cmd` | Menu principal |
| `MATRIX_LOCAL.ps1` | Pluie Matrix locale |
| `METEO.ps1` | Météo avec saisie de ville |
| `QR_CODE.ps1` | Génération d'un QR code dans le terminal |
| `POKEMON_ASCII.cmd` | Pokémon ASCII par numéro Pokédex |
| `COMMANDES.txt` | Liste des commandes disponibles |

## Utilisation

### Menu principal

Le point d'entrée du projet est :

```cmd
MENU_TERMINAL_FUN.cmd
```

Il permet d'accéder aux différents outils inclus dans le dossier.

### PowerShell

Sous PowerShell, utilise :

```powershell
curl.exe
```

et non :

```powershell
curl
```

### Arrêter une animation

La plupart des animations peuvent être arrêtées avec :

```text
Ctrl + C
```

## Fonctions incluses

### Matrix locale

Le fichier :

```text
MATRIX_LOCAL.ps1
```

lance une pluie Matrix directement en PowerShell.

### Météo

Le fichier :

```text
METEO.ps1
```

permet d'afficher la météo en saisissant une ville.

### QR Code

Le fichier :

```text
QR_CODE.ps1
```

permet de générer un QR code directement dans le terminal.

### Pokémon ASCII

Le fichier :

```text
POKEMON_ASCII.cmd
```

permet d'afficher un Pokémon ASCII à partir de son numéro Pokédex.

Les Pokémon sont chargés depuis un dépôt public GitHub.

### Star Wars ASCII

La fonction Star Wars utilise le client Telnet de Windows et dépend d'un serveur public.

## Remarques importantes

- Sous PowerShell, utilise `curl.exe` au lieu de `curl`.
- `Ctrl + C` arrête la plupart des animations.
- Star Wars nécessite le client Telnet Windows.
- Star Wars dépend d'un serveur public externe.
- Les Pokémon sont chargés depuis un dépôt public GitHub.

## Structure du projet

```text
Terminal-Fun/
├── MENU_TERMINAL_FUN.cmd
├── MATRIX_LOCAL.ps1
├── METEO.ps1
├── QR_CODE.ps1
├── POKEMON_ASCII.cmd
├── COMMANDES.txt
└── README.md
```

## Compatibilité

Projet prévu pour Windows avec :

- CMD
- PowerShell
- `curl.exe`
- Telnet pour la fonction Star Wars

---

**Terminal Fun**
