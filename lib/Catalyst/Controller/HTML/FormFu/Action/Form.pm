package Catalyst::Controller::HTML::FormFu::Action::Form;
{
  $Catalyst::Controller::HTML::FormFu::Action::Form::VERSION = '1.00';
}

use strict;
use warnings;
use base qw( Catalyst::Controller::HTML::FormFu::ActionBase::Form );

use Config::Any;

sub execute {
    my $self = shift;
    my ( $controller, $c ) = @_;

    if ( $self->reverse =~ $self->_form_action_regex ) {
        # don't load form again
        return $self->next::method(@_);
    }

    my $config = $controller->_html_formfu_config;

    return $self->next::method(@_)
        unless exists $self->attributes->{ActionClass}
            && $self->attributes->{ActionClass}[0] eq $config->{form_action};

    my $form = $controller->_form;

    $form->process;

    $c->stash->{ $config->{form_stash} } = $form;

    $self->next::method(@_);
}

1;
