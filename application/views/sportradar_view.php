<!-- app/Views/carte_view.php -->
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ma carte Google Maps</title>
    <!-- Chargez l'API Google Maps de manière asynchrone -->
    <script async src="https://maps.googleapis.com/maps/api/js?key=d02e5ae87c34d4257025849a2b496457026ee346&callback=initMap"></script>
</head>
<body>
    <!-- Votre contenu HTML ici -->
    <div id="maCarte" style="width: 100%; height: 400px;"></div>
</body>
</html>

<script>
    function initMap() {
        // Créez une instance de carte et configurez-la selon vos besoins
        const map = new google.maps.Map(document.getElementById('maCarte'), {
            center: { lat: 4.0511, lng: 9.7679 }, // Coordonnées de Douala
            zoom: 12,
        });
        // Ajoutez des marqueurs, des polygones, etc. à votre carte ici
    }
</script>

