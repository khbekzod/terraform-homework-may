resource "aws_iam_user" "user" {
  name = "jenny"
}

resource "aws_iam_user" "user2" {
  name = "rose"
}

resource "aws_iam_user" "user3" {
  name = "lisa"
}

resource "aws_iam_user" "user4" {
  name = "jisoo"
}

resource "aws_iam_user" "user5" {
  name = "jihyoo"
}

resource "aws_iam_user" "user6" {
  name = "sana"
}

resource "aws_iam_user" "user7" {
  name = "momo"
}

resource "aws_iam_user" "user8" {
  name = "dahyun"
}

resource "aws_iam_group" "group" {
  name = "blackpink"
}

resource "aws_iam_group" "group2" {
  name = "twice"
}

resource "aws_iam_group_membership" "devops" {
  name = "changing-group-membership"
  
  
  users = [
    aws_iam_user.user.name,
    aws_iam_user.user2.name,
    aws_iam_user.user3.name,
    aws_iam_user.user4.name,
    aws_iam_user.user9.name
]

  group = aws_iam_group.group.name
}

resource "aws_iam_group_membership" "devops2" {
  name = "changing-group2-membership"
  
  
  users = [
    aws_iam_user.user5.name,
    aws_iam_user.user6.name,
    aws_iam_user.user7.name,
    aws_iam_user.user8.name,
    aws_iam_user.user10.name
]

  group = aws_iam_group.group2.name
}

resource "aws_iam_user" "user9" {
  name = "miyeon"
}

resource "aws_iam_user" "user10" {
  name = "mina"
}

#running on terminal: terraform import aws_iam_user.user9 miyeon
#running on terminal: terraform import aws_iam_user.user10 mina

