use v6;

use Blog::Models::Article;

unit role Blog::Repository::ArticeRepository;

method fetch(Str $cursor, Int $n)                returns Array[Blog::Models::Article] { ... }

method get-by-id(Numeric $id)                    returns Blog::Models::Article { ... }

method get-by-title(Str $title)                  returns Blog::Models::Article  { ... }

method update(Blog::Models::Article $an-article) returns Int  { ... }

method store(Blog::Models::Article $an-article)  returns Int  { ... }

method delete(Blog::Models::Article $an-article) returns Int  { ... }
