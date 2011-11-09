package Module::Install::PrePAN;
use 5.008001;
use strict;
use warnings;
use Carp ();

our $VERSION = '0.01';

use base qw(Module::Install::Base);

sub prepan_url {
    my ($self, $url) = @_;
    Carp::croak 'missing parameter: $url' if !defined $url;
    $self->resources(PrePAN => $url);
}

!!1;

__END__

=encoding utf8

=head1 NAME

Module::Install::PrePAN - Designate a URL of PrePAN page of a module

=head1 SYNOPSIS

  # Makefile.PL
  prepan_url  'http://prepan.org/module/3Yz7PYrBJG';

=head1 DESCRIPTION

Module::Install::PrePAN is a Module::Install extension to designate a
URL of PrePan page where you requested reviews for your module.

=head1 AUTHOR

Kentaro Kuribayashi E<lt>kentarok@gmail.comE<gt>

=head1 SEE ALSO

=over 4

=item * L<Module::Install>

=item * PrePAN

L<http://prepan.org/>

=back

=head1 LICENSE

Copyright (C) Kentaro Kuribayashi

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
