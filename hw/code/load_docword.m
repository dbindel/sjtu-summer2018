% [W, vocab] = load_docword(p, id)
%
% Load the word count and vocabulary files from the UCI bag-of-words data.
%
% Input:
%   p:  path where the data files live
%   id: which data set (nips, kos, etc) we want
%
% Output:
%   W: an ndocs-by-nwords sparse matrix of term counts
%   vocab: a cell array of words in the vocabulary
%
function [W, vocab] = load_docword(p, id)

  if nargin < 1, p  = '../data'; end
  if nargin < 2, id = 'nips';    end

  doc_fp = fopen(sprintf('%s/docword.%s.txt', p, id), 'r');
  ndoc  = fscanf(doc_fp, '%d\n', 'C');
  nword = fscanf(doc_fp, '%d\n', 'C');
  nnz   = fscanf(doc_fp, '%d\n', 'C');
  data  = fscanf(doc_fp, '%d', [3, nnz])';
  fclose(doc_fp);
  W = sparse(data(:,1), data(:,2), data(:,3), ndoc, nword);

  vocab_fp = fopen(sprintf('%s/vocab.%s.txt', p, id), 'r');
  for k = 1:nword
    vocab{k} = fgetl(vocab_fp);
  end
  fclose(vocab_fp);
