
package Paws::CloudFormation::DeleteStack;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has RetainResources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoleARN => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DeleteStack - Arguments for method DeleteStack on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteStack on the 
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DeleteStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteStack.

As an example:

  $service_obj->DeleteStack(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DeleteStack>
=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for this C<DeleteStack> request. Specify this token
if you plan to retry requests so that AWS CloudFormation knows that
you're not attempting to delete a stack with the same name. You might
retry C<DeleteStack> requests to ensure that AWS CloudFormation
successfully received them.

All events triggered by a given stack operation are assigned the same
client request token, which you can use to track operations. For
example, if you execute a C<CreateStack> operation with the token
C<token1>, then all the C<StackEvents> generated by that operation will
have C<ClientRequestToken> set as C<token1>.

In the console, stack operations display the client request token on
the Events tab. Stack operations that are initiated from the console
use the token format I<Console-StackOperation-ID>, which helps you
easily identify the stack operation . For example, if you create a
stack using the console, each stack event would be assigned the same
token in the following format:
C<Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002>.



=head2 RetainResources => ArrayRef[Str|Undef]

For stacks in the C<DELETE_FAILED> state, a list of resource logical
IDs that are associated with the resources you want to retain. During
deletion, AWS CloudFormation deletes the stack but does not delete the
retained resources.

Retaining resources is useful when you cannot delete a resource, such
as a non-empty S3 bucket, but you want to delete the stack.



=head2 RoleARN => Str

The Amazon Resource Name (ARN) of an AWS Identity and Access Management
(IAM) role that AWS CloudFormation assumes to delete the stack. AWS
CloudFormation uses the role's credentials to make calls on your
behalf.

If you don't specify a value, AWS CloudFormation uses the role that was
previously associated with the stack. If no role is available, AWS
CloudFormation uses a temporary session that is generated from your
user credentials.



=head2 B<REQUIRED> StackName => Str

The name or the unique stack ID that is associated with the stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteStack in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

