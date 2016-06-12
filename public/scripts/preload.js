var images = [];

function preload() {
  for (var i = 0; i < preload.arguments.length; i++) {
    images[i] = new Image();
    images[i].src = preload.arguments[i];
  }
}

preload (
  "images/countdown.png",
  "images/paper-open-1.png",
  "images/paper-close-1.png",
  "images/paper-open-2.png",
  "images/paper-close-2.png",
  "images/scissor-open-1.png",
  "images/scissor-close-1.png",
  "images/scissor-open-2.png",
  "images/scissor-close-2.png",
  "images/rock-1.png",
  "images/rock-2.png"
);
