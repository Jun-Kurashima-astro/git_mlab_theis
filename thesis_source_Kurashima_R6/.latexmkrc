#!/usr/bin/env perl

# --- engine ---
$latex = 'uplatex -synctex=1 -halt-on-error -file-line-error %O %S';
$max_repeat = 5;

# --- bib / index ---
$bibtex    = 'pbibtex %O %S';
$makeindex = 'mendex %O -o %D %S';

# --- output dir ---
$out_dir = 'out';

# --- DVI -> PDF (force) ---
$dvipdf   = 'dvipdfmx %O -o %D %S';
$pdf_mode = 3;        # 3 = dvi -> pdf (via $dvipdf)

# 追加：dvi->pdf を確実に最後まで回す（環境依存で止まるのを防ぐ）
$always_view_file_via_temporary = 0;
