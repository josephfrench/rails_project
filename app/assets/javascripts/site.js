$(document).on('turbolinks:load', function(){
  //Raty
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
  $('.rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
  //Image Zoom
  $('.img-zoom').elevateZoom({
    scrollZoom : true,
    zoomType : "lens",
    lensShape : "round",
    lensSize : 250
  });
});