# 🏰 Lorcana Data Hub - SSOT Data & AI Platform

![Statut](https://img.shields.io/badge/Statut-En_Développement-orange)
![Version](https://img.shields.io/badge/Version-0.1.0-blue)
![Stack](https://img.shields.io/badge/Stack-PostgreSQL%20|%20Kestra%20|%20FastAPI%20|%20dbt%20|%20Mistral-lightgrey)

## 📖 À propos du projet (Le "Pourquoi")

**Lorcana Data Hub** est un projet d'ingénierie des données et d'Intelligence Artificielle conçu dans le cadre de ma formation Data Engineer chez OpenClassrooms. 

Face à la fragmentation des données autour du jeu de cartes Disney Lorcana (règles éclatées dans des PDF, catalogues sur des API communautaires, métagame et prix dispersés), ce projet a pour vocation de créer une **Single Source of Truth (SSOT)**. L'objectif est d'ingérer, nettoyer, et modéliser ces données selon l'architecture Medallion, pour les rendre interrogeables à la fois par des tableaux de bord analytiques et par un moteur d'IA générative (RAG - Retrieval-Augmented Generation) garantissant zéro hallucination grâce au traçage strict des sources.

## 👨‍💻 Auteur et Contact

Ce projet est développé par **Jérémy Huleux**, professionnel en reconversion vers le métier de **Data Engineer**, ouvert aux opportunités (alternance/emploi) dans la région Hauts-de-France (Lille, Calais, Boulogne-sur-Mer, Ardres).

* 💼 **LinkedIn :** [linkedin.com/in/huleux-jeremy](https://www.linkedin.com/in/huleux-jeremy/)
* 🐙 **GitHub :** [github.com/Jeremy-Huleux](https://github.com/Jeremy-Huleux)

## 🚧 Étape actuelle de développement

> **Phase 1 : Infrastructure & Sécurité (En cours)**
> * ✅ Conception de l'architecture complète (BPMN, UML, MLD, C4, Lineage).
> * ✅ Provisionnement du Data Warehouse (PostgreSQL + pgvector).
> * ✅ Déploiement de l'orchestrateur (Kestra).
> * ⏳ **Prochaine étape :** Développement du premier script d'extraction Python (API Lorcana).

## ⚙️ Tutoriel d'installation (Environnement Local)

L'infrastructure locale est packagée sous Docker.

**1. Cloner le dépôt et préparer l'environnement**
```bash
git clone https://github.com/Jeremy-Huleux/lorcana-data-hub.git
cd lorcana-data-hub
```

**2. Configurer les variables d'environnement**
Dupliquez le fichier d'exemple pour créer vos identifiants locaux :
```bash
cp .env.example .env
```
*(Éditez le fichier `.env` avec vos mots de passe souhaités).*

**3. Lancer l'infrastructure**
```bash
docker compose up -d
```

**4. Accéder aux services**
* **Kestra (Orchestrateur) :** `http://localhost:8080`
* **PostgreSQL (Data Warehouse) :** `localhost:5432`

## ⚖️ Licence et Droits d'Utilisation

**Copyright © 2026 Jérémy Huleux. Tous droits réservés.**

Ce code source, cette architecture et ce projet sont la propriété intellectuelle exclusive de Jérémy Huleux. 
Aucune licence open-source n'est accordée. Il est strictement interdit de copier, modifier, distribuer, vendre ou utiliser ce code, en tout ou partie, à des fins personnelles, commerciales ou académiques sans l'autorisation écrite explicite de l'auteur. Ce dépôt est public uniquement à des fins de démonstration de compétences professionnelles (Portfolio).