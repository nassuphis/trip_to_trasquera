---
title: "Example Document"
output: html_document
---

<style>
.my-div {
  display: flex;
  justify-content: center; /* Centers the images within the container */
  gap: 10px; /* Adds space between the images */
  padding: 10px;
  margin: 10px 0;
}
.my-div img {
  max-width: 48%; /* Ensures the images don't overflow */
  height: auto;
}
.image-with-legend {
  display: flex;
  flex-direction: column;
  justify-content: center; /* Centers the image vertically */
  align-items: center; /* Centers the image horizontally */
  max-width: 48%; /* Ensures the container doesn't overflow */
}
.legend {
  text-align: center;
  margin-top: 5px;
  font-size: 10px; /* Set the text size of the legend */
  max-width: 40%;
}
</style>

## Tests

<div class="my-div">
<img src="../assets/images_trasquera/collage_trasquera3.jpg" alt="Image 1">
<div class="image-with-legend">
<img src="../assets/images/anto_soo.jpg" alt="Image 2">
<div class="legend">
Bugliaga Dentro is a tiny mountain village in the Italian Alps on the Swiss border. 
Once abandoned and now beautifully reviving with a few families (5 of us), trying to safeguard its original charm. 
We warmly welcome all our friends who long for silence and peace deep in the mountain.
</div>
</div>
</div>

