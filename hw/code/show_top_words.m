% show_top_words(doc, vocab, n)
%
% Given a tf-idf vector for a document (doc) and the associated vocabulary,
% print the top n most significant words for the document along with their
% tf-idf scores.
%
function show_top_words(doc, vocab, n)

  if nargin < 3, n = 10; end
  [v, idx] = sort(doc, 'descend');
  for k = 1:n
    fprintf('  %s (%.2e)', vocab{idx(k)}, v(k));
  end
  fprintf('\n');
