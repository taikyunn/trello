import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import interactionPlugin from '@fullcalendar/interaction';
import listPlugin from '@fullcalendar/list';

document.addEventListener('turbolinks:load', function() {
  const calendarEl = document.getElementById('calendar');

  const calendar = new Calendar(calendarEl, {
    locale: 'ja',
    height: 'auto',
    firstDay: 1,

    
    dayCellContent: function(e) {  
      e.dayNumberText = e.dayNumberText.replace('日', '');  
      },  
      headerToolbar: {  
        left: 'prev,next today',  
        center: 'title',  
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'  
        },  
     
        events: 'events.json',
        initialDate: new Date(),  
        navLinks: true, 
        businessHours: true, 
        editable: true,  
        selectable: true, 
        

    plugins: [ dayGridPlugin, interactionPlugin, timeGridPlugin, listPlugin]
    
  });

  calendar.render();
});
