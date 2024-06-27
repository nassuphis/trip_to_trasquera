---
title: "Example Document"
output: html_document
---

<script src="https://openseadragon.github.io/openseadragon/openseadragon.min.js"></script>

<style>

.my-div {
  display: flex;
  justify-content: center; 
  /*align-items: center; */
  align-items: stretch;
  gap: 10px; 
  padding: 10px;
  margin: 10px 0;
  height: 100%; 
  width: 100%; 
}

.image-with-legend {
  display: flex;
  flex-direction: column;
  justify-content: center; 
  align-items: center;
  width: 48%; 
  max-width: 48%; 
}

.image-with-legend img {
  max-width: 100%; 
  height: auto;
}

.legend {
  text-align: center;
  margin-top: 5px;
  font-size: 0.5rem; 
  max-width: 100%; 
}

.legend-container {
  display: flex;
  flex-direction: column;
  align-items: center; 
  justify-content: center; 
  gap: 5px;
}

/* Media queries for responsive font scaling */
@media (max-width: 2400px) {
  .legend {
    font-size: 0.60rem;
  }
}

@media (max-width: 1200px) {
  .legend {
    font-size: 0.50rem;
  }
}

@media (max-width: 992px) {
  .legend {
    font-size: 0.30rem;
  }
}

@media (max-width: 768px) {
  .legend {
    font-size: 0.25rem;
  }
}

@media (max-width: 576px) {
  .legend {
    font-size: 0.15rem;
  }
}
</style>

## Tests

<div class="my-div">

<div style="width: 50%">

<div style="width: 100%; display: flex; flex-direction: row;  padding: 2px;">
<img src="../assets/collage5/hut.jpg" alt="Image 1"  style="width: 25%; aspect-ratio: 1;">
<img src="../assets/collage5/hut3.jpg" alt="Image 2" style="width: 25%; aspect-ratio: 1;">
<img src="../assets/collage5/bull.jpg" alt="Image 3" style="width: 25%; aspect-ratio: 1;">
</div>

<div style="width: 100%; display: flex; flex-direction: row;">
<img src="../assets/collage5/cliff.jpg" alt="Image 4" style="width: 25%;aspect-ratio: 1;">
<img src="../assets/collage5/climbing.jpg" alt="Image 5" style="width: 25%; aspect-ratio: 1;">
<img src="../assets/collage5/hut6.jpg" alt="Image 6" style="width: 25%; aspect-ratio: 1;">
</div>

<div style="width: 100%; display: flex; flex-direction: row;">
<img src="../assets/collage5/hut7.jpg" alt="Image 1" style="width: 25%; aspect-ratio: 1;">
<img src="../assets/collage5/hut8.jpg" alt="Image 2" style="width: 25%; aspect-ratio: 1;">
<img src="../assets/collage5/sunset.jpg" alt="Image 3" style="width: 25%; aspect-ratio: 1;">
</div>

</div>

<div class="image-with-legend" style="width: 50%;">
<img src="../assets/images/anto_soo.jpg" alt="Image 2">
<div class="legend-container" style="width: 80%;">
<div class="legend" style="width: 80%;">
Bugliaga Dentro is a tiny mountain village in the Italian Alps on the Swiss border. 
Once abandoned and now beautifully reviving with a few families (5 of us), trying to safeguard its original charm. 
We warmly welcome all our friends who long for silence and peace deep in the mountain.
</div>
</div>
</div>

</div>

## Zoom

<div id="openseadragon1" style="width: 800px; height: 600px;"></div>
<script>
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "https://openseadragon.github.io/openseadragon/images/",
        tileSources: {
            type: 'image',
            url: 'https://sigrid-paintings.s3.amazonaws.com/images/hires_trasquera3.jpg',
        }
    });
</script>
