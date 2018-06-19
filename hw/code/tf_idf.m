% [WW] = tf_idf(W)
%
% Compute the term-frequency inverse-document-frequency scores (WW)
% from raw term count data (W).
%
function [WW, Dtf, Didf] = tf_idf(W)

  [Nd,Nw] = size(W);
  doc_lens = sum(W,2);
  doc_freq = sum(W > 0,1)';
  Dtf  = spdiags(1./doc_lens, 0, Nd, Nd);
  Didf = spdiags(log(Nd./doc_freq), 0, Nw, Nw);
  WW = Dtf * W * Didf;
