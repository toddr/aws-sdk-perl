
package Paws::IoT::GetJobDocument;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJobDocument');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}/job-document');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetJobDocumentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetJobDocument - Arguments for method GetJobDocument on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJobDocument on the 
AWS IoT service. Use the attributes of this class
as arguments to method GetJobDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJobDocument.

As an example:

  $service_obj->GetJobDocument(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The unique identifier you assigned to this job when it was created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJobDocument in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
