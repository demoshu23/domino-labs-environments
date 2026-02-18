resource "aws_efs_file_system" "domino_efs" {
  encrypted = true
}

resource "aws_efs_mount_target" "mount" {
  file_system_id  = aws_efs_file_system.domino_efs.id
  subnet_id       = var.private_subnet_id
  security_groups = [var.security_group_id]
}
