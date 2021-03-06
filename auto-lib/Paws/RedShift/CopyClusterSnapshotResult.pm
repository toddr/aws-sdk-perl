
package Paws::RedShift::CopyClusterSnapshotResult;
  use Moose;
  has Snapshot => (is => 'ro', isa => 'Paws::RedShift::Snapshot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CopyClusterSnapshotResult

=head1 ATTRIBUTES


=head2 Snapshot => L<Paws::RedShift::Snapshot>




=head2 _request_id => Str


=cut

