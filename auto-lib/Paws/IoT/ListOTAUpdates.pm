
package Paws::IoT::ListOTAUpdates;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has OtaUpdateStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'otaUpdateStatus');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOTAUpdates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/otaUpdates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListOTAUpdatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListOTAUpdates - Arguments for method ListOTAUpdates on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOTAUpdates on the 
AWS IoT service. Use the attributes of this class
as arguments to method ListOTAUpdates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOTAUpdates.

As an example:

  $service_obj->ListOTAUpdates(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

A token used to retreive the next set of results.



=head2 OtaUpdateStatus => Str

The OTA update job status.

Valid values are: C<"CREATE_PENDING">, C<"CREATE_IN_PROGRESS">, C<"CREATE_COMPLETE">, C<"CREATE_FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOTAUpdates in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
