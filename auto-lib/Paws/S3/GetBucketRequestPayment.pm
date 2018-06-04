
package Paws::S3::GetBucketRequestPayment;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketRequestPayment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?requestPayment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketRequestPaymentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketRequestPayment - Arguments for method GetBucketRequestPayment on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketRequestPayment on the 
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetBucketRequestPayment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketRequestPayment.

As an example:

  $service_obj->GetBucketRequestPayment(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetBucketRequestPayment>
=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketRequestPayment in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

