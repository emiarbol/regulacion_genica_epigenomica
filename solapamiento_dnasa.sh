#!/bin/bash
#script para calcular el solapamiento con DNAasa. 

bedtools intersect -a segmentos_comunesE6_moncd14.bed -b CD14_monocytesDukeDNaseSeq.pk >solapamiento_dnasa.bed 

