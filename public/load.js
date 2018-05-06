
var images = new Array ('/rock.png', '/paper.png', '/scissors.png');
var index = 1;

function rotateImage()
{
  $('#myImage').fadeOut('fast', function()
  {
    $(this).attr('src', images[index]);

    $(this).fadeIn('fast', function()
    {
      if (index == images.length-1)
      {
        index = 0;
      }
      else
      {
        index++;
      }
    });
  });
}

$(document).ready(function()
{
  setInterval (rotateImage, 1000);
});

setTimeout(function() {
  window.location.href = "/result";
}, 3000);
