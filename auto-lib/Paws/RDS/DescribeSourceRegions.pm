
package Paws::RDS::DescribeSourceRegions;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has RegionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSourceRegions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::SourceRegionMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSourceRegionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeSourceRegions - Arguments for method DescribeSourceRegions on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSourceRegions on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeSourceRegions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSourceRegions.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To describe source regions
    # To list the AWS regions where a Read Replica can be created.
    my $SourceRegionMessage = $rds->DescribeSourceRegions();

    # Results:
    my $SourceRegions = $SourceRegionMessage->SourceRegions;

    # Returns a L<Paws::RDS::SourceRegionMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeSourceRegions>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

This parameter is not currently supported.



=head2 Marker => Str

An optional pagination token provided by a previous
DescribeSourceRegions request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 RegionName => Str

The source AWS Region name. For example, C<us-east-1>.

Constraints:

=over

=item *

Must specify a valid AWS Region name.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSourceRegions in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

