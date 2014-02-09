$(document).ready(function() {

  $('#beer').addClass('active')

  $('.container').on('click', 'h2', function() {
    if($(this).hasClass('active')) {
      // do nothing
    } else {
      $('.active').removeClass('active');
      $(this).parent().addClass('active');
    }
  })

  $('.container').on('click', '#reload-link', function() {
    var drink_count = $('.drink-count').text()

    $.ajax({
      type: "POST",
      url: $(this).attr('href'),
      data: {
        "drink_count": drink_count
      }
    }).done(function(data) {
      $('.new-drinks').text(data + " new drinks added.")
      console.log('JSON received')
    });

    console.log('When will this execute?')
    return false
  })
})


