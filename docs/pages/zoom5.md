---
title: "Zoom 5"
output: html_document
---

<script src="https://openseadragon.github.io/openseadragon/openseadragon.min.js"></script>

## Zoom

<div id="openseadragon5" style="width: 800px; height: 600px;"></div>
<script>
    var viewer = OpenSeadragon({
        id: "openseadragon5",
        prefixUrl: "https://openseadragon.github.io/openseadragon/images/",
        tileSources: {
            type: 'image',
            url: 'https://sigrid-paintings.s3.amazonaws.com/images/hires_trasquera5.jpg',
        }
    });
</script>
