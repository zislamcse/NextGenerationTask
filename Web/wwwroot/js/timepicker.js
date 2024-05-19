window.onload = function () {
    var timepickerInput = document.getElementById('Customer_AgendaTime');

    // Create a custom 12-hour timepicker
    timepickerInput.addEventListener('focus', function () {
        var currentTime = this.value || '12:00 AM';
        var timeParts = currentTime.split(':');
        var hours = parseInt(timeParts[0]);
        var minutes = parseInt(timeParts[1].split(' ')[0]);
        var period = timeParts[1].split(' ')[1];

        // Create hour select
        var hourSelect = document.createElement('select');
        for (var i = 1; i <= 12; i++) {
            var option = document.createElement('option');
            option.value = i;
            option.text = i;
            if (i === hours) {
                option.selected = true;
            }
            hourSelect.appendChild(option);
        }

        // Create minute select
        var minuteSelect = document.createElement('select');
        for (var j = 0; j < 60; j++) {
            var option = document.createElement('option');
            option.value = j;
            option.text = (j < 10 ? '0' : '') + j;
            if (j === minutes) {
                option.selected = true;
            }
            minuteSelect.appendChild(option);
        }

        // Create period select
        var periodSelect = document.createElement('select');
        var periodOptions = ['AM', 'PM'];
        for (var k = 0; k < periodOptions.length; k++) {
            var option = document.createElement('option');
            option.value = periodOptions[k];
            option.text = periodOptions[k];
            if (period === periodOptions[k]) {
                option.selected = true;
            }
            periodSelect.appendChild(option);
        }

        // Create container div for selects
        var containerDiv = document.createElement('div');
        containerDiv.appendChild(hourSelect);
        containerDiv.appendChild(document.createTextNode(':'));
        containerDiv.appendChild(minuteSelect);
        containerDiv.appendChild(periodSelect);

        // Replace input with container div
        this.parentNode.replaceChild(containerDiv, this);

        // Focus on hour select
        hourSelect.focus();
    });

    // Handle blur event to update value
    document.addEventListener('change', function (event) {
        if (event.target.tagName === 'SELECT') {
            var selectedTime = event.target.parentNode.querySelector('select:nth-child(1)').value + ':' +
                event.target.parentNode.querySelector('select:nth-child(2)').value +
                ' ' + event.target.parentNode.querySelector('select:nth-child(3)').value;

            timepickerInput.value = selectedTime;
        }
    });
};