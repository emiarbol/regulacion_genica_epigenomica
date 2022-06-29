#!/bin/bash
#script para filtrar los segmentos comunes que contiene el estado E6 en las dos réplicas. 
#Para ejecutar este script incluirlo en la carpeta ./RESULTS/Modelo_11_estados

awk 'BEGIN{FS="\t"; OFS="\t"} {if($4== "E6") {print $0}}' Monocyte1_11_Master_11_segments.bed >segmentosE6_moncd14_r1.bed
awk 'BEGIN{FS="\t"; OFS="\t"} {if($4== "E6") {print $0}}' Monocyte2_11_Master_11_segments.bed >segmentosE6_moncd14_r2.bed
bedtools intersect -a segmentosE6_moncd14_r1.bed -b segmentosE6_moncd14_r2.bed > segmentos_comunesE6_moncd14.bed


