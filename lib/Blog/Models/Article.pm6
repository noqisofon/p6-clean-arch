use v6;

unit class Blog::Models::Article;

has Int      $id;
has Str      $title;
has Str      $content;
has DateTime $updated-at;
has DateTime $created-at;
