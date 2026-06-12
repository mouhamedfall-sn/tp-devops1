# 🚀 TP DevOps — Automatisation CI/CD avec GitHub Actions, Terraform & Docker

> **Module :** Automatisation DevOps  
> **Établissement :** Université Cheikh Anta Diop (UCAD) — FST/DMI  
> **Filière :** Master 1 RETEL  
> **Auteur :** Mouhamed  
> **Dépôt :** `tp-devops1`

---

## 📋 Description

Ce projet couvre l'automatisation complète d'un pipeline DevOps incluant :

- Un script Bash d'automatisation et de tests
- Un pipeline CI/CD avec **GitHub Actions**
- Une infrastructure as Code avec **Terraform**
- La conteneurisation de l'application avec **Docker**

---

## 🗂️ Structure du projet

```
tp-devops1/
├── .github/
│   └── workflows/
│       └── ci.yml          # Pipeline GitHub Actions
├── terraform/
│   ├── main.tf             # Configuration Terraform
│   ├── variables.tf        # Variables Terraform
│   └── outputs.tf          # Outputs Terraform
├── Dockerfile              # Image Docker de l'application
├── .dockerignore           # Fichiers exclus du build Docker
├── package.json            # Dépendances Node.js
├── index.js                # Point d'entrée de l'application
├── test.js                 # Tests automatisés
├── setup.sh                # Script Bash d'automatisation
└── README.md               # Ce fichier
```

---

## ⚙️ Prérequis

Avant d'exécuter ce projet, assurez-vous d'avoir installé :

| Outil | Version testée | Vérification |
|-------|---------------|--------------|
| Git | ≥ 2.x | `git --version` |
| Node.js | ≥ 18.x | `node --version` |
| Docker Desktop | ≥ 29.x | `docker --version` |
| Terraform | ≥ 1.x | `terraform --version` |

---

## 🚀 Exécution — Partie 1 : Script Bash

Le script `setup.sh` automatise la vérification de l'environnement et le lancement de l'application.

```bash
# Rendre le script exécutable
chmod +x setup.sh

# Lancer le script
./setup.sh
```

**Ce que fait le script :**
- Vérifie la présence des outils requis (Node.js, Git, Docker)
- Installe les dépendances npm
- Lance les tests automatisés
- Démarre le serveur Node.js

---

## 🔄 Exécution — Partie 2 : Pipeline CI/CD (GitHub Actions)

Le fichier `.github/workflows/ci.yml` définit le pipeline automatique.

### Déclenchement automatique

Le pipeline se déclenche à chaque `push` ou `pull request` sur la branche `main` :

```yaml
on:
  push:
    branches: [main]
  pull_request:
    branches: [main]
```

### Étapes du pipeline

1. **Checkout** — Récupération du code source
2. **Setup Node.js** — Installation de Node.js 18
3. **Install dependencies** — `npm install`
4. **Run tests** — `npm test`

### Consulter les résultats

> GitHub → Dépôt → onglet **Actions** → sélectionner un workflow run

---

## 🏗️ Exécution — Partie 3 : Terraform (Infrastructure as Code)

```bash
# Se placer dans le dossier terraform
cd terraform

# Initialiser Terraform
terraform init

# Prévisualiser les changements
terraform plan

# Appliquer l'infrastructure
terraform apply
```

> **Note :** Dans le cadre de ce TP, Terraform génère un fichier local simulant le provisionnement d'infrastructure.

---

## 🐳 Exécution — Partie 4 : Docker (Bonus)

### Build de l'image

```bash
docker build -t tp-devops-app .
```

### Lancer le conteneur

```bash
docker run -p 3000:3000 tp-devops-app
```

### Tester l'application

```bash
curl http://localhost:3000/ping
# Réponse attendue : pong
```

### Vérifier le conteneur actif

```bash
docker ps
```

---

## 🧪 Tests

Les tests sont définis dans `test.js` et s'exécutent avec :

```bash
npm test
```

**Endpoint testé :**

| Route | Méthode | Réponse attendue |
|-------|---------|-----------------|
| `/ping` | GET | `pong` |

---

## 📸 Captures d'écran

Les captures d'écran des exécutions réussies sont disponibles dans le dossier `screenshots/` :

| Fichier | Description |
|--------|-------------|
| `01-verification-outils.png` | Vérification des outils installés |
| `05-ping-pong.png` | Test endpoint `/ping` → `pong` |
| `08-github-actions-success.png` | Pipeline CI/CD réussi |
| `10-terraform-plan.png` | Résultat `terraform plan` |
| `11-terraform-apply.png` | Résultat `terraform apply` |
| `12-docker-run.png` | Conteneur Docker en cours d'exécution |

---

## ✅ Récapitulatif des réalisations

| Partie | Description | Statut |
|--------|-------------|--------|
| Bash | Script d'automatisation | ✅ Réalisé |
| CI/CD | Pipeline GitHub Actions | ✅ Réalisé |
| Terraform | Infrastructure as Code | ✅ Réalisé |
| Docker | Conteneurisation (Bonus) | ✅ Réalisé |

---

## 📚 Références

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [Docker Documentation](https://docs.docker.com)
- [Node.js Documentation](https://nodejs.org/en/docs)

---

*TP réalisé dans le cadre du module Automatisation DevOps — UCAD FST/DMI, M1 RETEL*
