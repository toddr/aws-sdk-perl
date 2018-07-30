
package Paws::Pinpoint::RemoveAttributes;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has AttributeType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attribute-type', required => 1);
  has UpdateAttributesRequest => (is => 'ro', isa => 'Paws::Pinpoint::UpdateAttributesRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'UpdateAttributesRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/attributes/{attribute-type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::RemoveAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::RemoveAttributes - Arguments for method RemoveAttributes on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveAttributes on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method RemoveAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveAttributes.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $RemoveAttributesResponse = $pinpoint->RemoveAttributes(
      ApplicationId           => 'My__string',
      AttributeType           => 'My__string',
      UpdateAttributesRequest => {
        Blacklist => [ 'My__string', ... ],    # OPTIONAL
      },

    );

    # Results:
    my $AttributesResource = $RemoveAttributesResponse->AttributesResource;

    # Returns a L<Paws::Pinpoint::RemoveAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique ID of your Amazon Pinpoint application.



=head2 B<REQUIRED> AttributeType => Str

Type of attribute. Can be endpoint-custom-attributes,
endpoint-custom-metrics, endpoint-user-attributes.



=head2 B<REQUIRED> UpdateAttributesRequest => L<Paws::Pinpoint::UpdateAttributesRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveAttributes in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
