---
title: "Zoom 10"
output: html_document
---

<script src="https://openseadragon.github.io/openseadragon/openseadragon.min.js"></script>

## Zoom

<div id="openseadragon10" style="width: 800px; height: 600px;"></div>
<script>
    var viewer = OpenSeadragon({
        id: "openseadragon10",
        prefixUrl: "https://openseadragon.github.io/openseadragon/images/",
        tileSources: {
            type: 'image',
            url: 'https://sigrid-paintings.s3.amazonaws.com/images/hires_trasquera10.jpg',
        }
    });
</script>
