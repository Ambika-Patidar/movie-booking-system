$(document).on("click", '.seat_col', function() {
  if ($(this).hasClass('taken')) {
    return
  }
  $(this).toggleClass('active')
});

var screen_layout_ids = [];
var price = 0;

$(document).on("click", '.seat_col', function() {
  let selectionPrice = parseInt($(this).closest('.category').data('price'));
  if(!$(this).hasClass('taken')) {
    let screen_id = $(this).data('seat-id')
    if (screen_layout_ids.find((id)=> id==screen_id))
      {
        screen_layout_ids = screen_layout_ids.filter((id) => id !== screen_id);
        setPrice(-selectionPrice)
      }
    else {
      screen_layout_ids.push(screen_id);
      setPrice(selectionPrice)
    }
  }
});

function setPrice(amount){
  price += amount;
  price > 0 ? $('.price').show() : $('.price').hide();
  $('.price .figure').html(`${price}`);
}

$(document).on("click", '.pay-price', function() {
  const showId = $('#show_id').val();
  const screenId = $('#screen_id').val();
  postAjax(`/screens/${screenId}/seat_allotments`, {screen_layout_ids: screen_layout_ids , show_id: showId, price: price });
});

function getAjaxLoad(address, data = {}, component_selector) {
  return $.ajax({
    url: address,
    type: "GET",
    data: data,
    dataType: 'script'
  });
}
