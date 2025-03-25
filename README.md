# tf-hands-on

A Terraform project that deploys a scalable web infrastructure on AWS.

## Outputs

### Public Access 1
![Public Access](./first-image.png)

### Public Access 2
![Public Access](./second-image.png)


## Customizing Web Content

You can modify the web content on the EC2 instances

1. **SSH into the second instance using the key pair:**
   ```sh
   ssh -i ~/.ssh/aws-keypair ubuntu@<instance-ip>
   ```

2. **Modify the default Apache index page:**
   ```sh
   echo "Hi" | sudo tee /var/www/html/index.html
   ```
