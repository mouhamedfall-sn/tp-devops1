#!/bin/bash

echo "======================================="
echo "   TP DevOps - Script d'automatisation"
echo "   UCAD FST/DMI - M1 RETEL"
echo "======================================="
echo ""

# Vérification des outils
echo "🔍 Vérification des outils installés..."
echo "---------------------------------------"

git --version && echo "✅ Git OK" || echo "❌ Git manquant"
node --version && echo "✅ Node.js OK" || echo "❌ Node.js manquant"
docker --version && echo "✅ Docker OK" || echo "❌ Docker manquant"

echo ""
echo "📦 Installation des dépendances..."
echo "---------------------------------------"
npm install

echo ""
echo "🧪 Lancement des tests..."
echo "---------------------------------------"
npm test

echo ""
echo "🚀 Démarrage du serveur..."
echo "---------------------------------------"
echo "Serveur disponible sur http://localhost:3000"
echo "Test: curl http://localhost:3000/ping"
node index.js &

sleep 2
curl http://localhost:3000/ping

echo ""
echo "======================================="
echo "   ✅ Script terminé avec succès !"
echo "======================================="
