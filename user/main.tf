# resource "aws_iam_user" "admin-users"{
#     name = "Mark"
#     tags = {
#         Description = "Technical Team Leader"
#     }
# }

resource "aws_iam_user" "users" {
  name = var.project-sapphire-users[count.index]
  count = length(var.project-sapphire-users)
}

resource "aws_iam_policy" "admin-policy" {
    name = "AdminPolicy"
    description = "Admin policy for Mark"
    policy = <<EOF
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": "*",
                "Resource": "*"
            }
        ]
    }
    EOF
}

# resource "aws_iam_user_policy_attachment" "admin-user-policy-attachment" {
#     user = aws_iam_user.admin-user.name
#     policy_arn = aws_iam_policy.admin-policy.arn
  
# }
