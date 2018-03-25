use v6;

use Blog::Repository::ArticleRepository;
# use Blog::Repository::SQLite3ArticleRepository;

unit module Blog::Repository;


sub get-article-repository(--> Blog::Repository::ArticleRepository) is export {
    # TODO: SQLite3 とかで実装した ArticleRepository を new して返す。
    # Blog::Repository::SQLite3ArticleRepository.new;
}
