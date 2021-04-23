function getAjax(url, data = {}){
  $.ajax({
    type: 'GET',
    url: url,
    data: data,
    dataType: 'script',
  });
}

function postAjax(url, data = {}){
  $.ajax({
    type: "POST",
    url: url,
    dataType: "script",
    format: "js",
    data: data
  }); 
}
