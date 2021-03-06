
package Paws::Pinpoint::CreateSegment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has WriteSegmentRequest => (is => 'ro', isa => 'Paws::Pinpoint::WriteSegmentRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'WriteSegmentRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSegment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/segments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::CreateSegmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateSegment - Arguments for method CreateSegment on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSegment on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method CreateSegment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSegment.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $CreateSegmentResponse = $pinpoint->CreateSegment(
      ApplicationId       => 'My__string',
      WriteSegmentRequest => {
        Dimensions => {
          Attributes => {
            'My__string' => {
              AttributeType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
              Values => [ 'My__string', ... ],    # OPTIONAL
            },
          },    # OPTIONAL
          Behavior => {
            Recency => {
              Duration =>
                'HR_24',    # values: HR_24, DAY_7, DAY_14, DAY_30; OPTIONAL
              RecencyType => 'ACTIVE',    # values: ACTIVE, INACTIVE; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Demographic => {
            AppVersion => {
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
              Values => [ 'My__string', ... ],    # OPTIONAL
            },    # OPTIONAL
            Channel => {
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
              Values => [ 'My__string', ... ],    # OPTIONAL
            },    # OPTIONAL
            DeviceType => {
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
              Values => [ 'My__string', ... ],    # OPTIONAL
            },    # OPTIONAL
            Make => {
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
              Values => [ 'My__string', ... ],    # OPTIONAL
            },    # OPTIONAL
            Model => {
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
              Values => [ 'My__string', ... ],    # OPTIONAL
            },    # OPTIONAL
            Platform => {
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
              Values => [ 'My__string', ... ],    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Location => {
            Country => {
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
              Values => [ 'My__string', ... ],    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          UserAttributes => {
            'My__string' => {
              AttributeType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
              Values => [ 'My__string', ... ],    # OPTIONAL
            },
          },    # OPTIONAL
        },    # OPTIONAL
        Name => 'My__string',
      },

    );

    # Results:
    my $SegmentResponse = $CreateSegmentResponse->SegmentResponse;

    # Returns a L<Paws::Pinpoint::CreateSegmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> WriteSegmentRequest => L<Paws::Pinpoint::WriteSegmentRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSegment in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

