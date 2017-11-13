
$(document).on("turbolinks:load", function() {
  console.log('ready')
  // function rotateCard(btn){
  //   var $card = $(btn).closest('.card-container')
  //   console.log($card)
  //   if($card.hasClass('hover')){
  //     $card.removeClass('hover')
  //   } else {
  //     $card.addClass('hover')
  //   }
  // }

  $('.flipping').on('click', function() {

    var $card = $(this).closest('.card-container')
    console.log($card)
    if($card.hasClass('hover')){
      $card.removeClass('hover')
    } else {
      $card.addClass('hover')
    }
  })


  var $checkbox = $('#test_id')
  var $isTutor_div = $('.is_tutor')

  $checkbox.on('change', function() {
    if(this.checked) {
      $isTutor_div.css('display', 'block')
    } else {
      $isTutor_div.css('display', 'none')
    }
  })

})
