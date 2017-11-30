
package Paws::ServerlessRepo::GetApplicationPolicy;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplicationPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::GetApplicationPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::GetApplicationPolicy - Arguments for method GetApplicationPolicy on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplicationPolicy on the 
AWSServerlessApplicationRepository service. Use the attributes of this class
as arguments to method GetApplicationPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplicationPolicy.

As an example:

  $service_obj->GetApplicationPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The id of the application to get policy for




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplicationPolicy in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
