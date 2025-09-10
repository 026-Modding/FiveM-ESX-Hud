window.addEventListener('message', function(event) {
    const data = event.data;

    if (data.type === 'updateHud') {
        document.getElementById('health-bar').style.width = data.health + '%';
        document.getElementById('armor-bar').style.width = data.armor + '%';
        document.getElementById('hunger-bar').style.width = data.hunger + '%';
        document.getElementById('thirst-bar').style.width = data.thirst + '%';
    }
});
