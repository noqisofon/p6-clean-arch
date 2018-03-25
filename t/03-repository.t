use v6;

use Test;

use Blog::Repository::ArticeRepository;
use Blog::Models::Article;


class ConcreteArticeRepository does Blog::Repository::ArticeRepository {
    method fetch(Str $cursor, Int $n) returns Array[Blog::Models::Article] {
        my @results = gather for 1..$n -> $id {
            take Blog::Models::Article.new( :$id );
        };

        Array[Blog::Models::Article].new( @results );
    }

    method get-by-id(Numeric $id)                    returns Blog::Models::Article {
        Blog::Models::Article.new( :$id );
    }

    method get-by-title(Str $title)                  returns Blog::Models::Article  {
        Blog::Models::Article.new( :$title );
    }

    method update(Blog::Models::Article $an-article) returns Int  {
        0;
    }

    method store(Blog::Models::Article $an-article)  returns Int  {
        0;
    }

    method delete(Blog::Models::Article $an-article) returns Int  {
    }
}

plan 1;

my $repository = ConcreteArticeRepository.new;

my Blog::Models::Article @articles = $repository.fetch( '', 5 );

is 5, @articles.elems;

done-testing;
