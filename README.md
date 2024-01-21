# Prevalent Technical Challenge "# PTC" 

## Getting Started:

### Prerequisites

    Apps required:
    

>  1. [Docker](https://www.docker.com/products/docker-desktop/)
>  2. [Git](https://git-scm.com/download/)
>  3. [GitHub account](https://github.com/)

To confirm Docker and Git have been installed successfully, you can run the following via CLI:

```
Docker --version
git --version
```


## Instructions to stand up a Laravel container using Docker:

Fork my repo from [GitHub](https://github.com/ST-R/PTC) to your own GitHub account. Guide; [how to fork a repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo)

Clone the repository to your local device. Guide; [how to clone a repository using Git and GitHub](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)

Git Command:
```
git clone https://github.com/ST-R/PTC.git
```
Once the repo has been cloned. Complete the following:

Open your CLI Navigate to your cloned repository Run the following command:

```bash
docker-compose up --build 
```

Confirm your container is running successfully, you should have the following Container and images:

 ```
 Container: 
   - ptc
Images:
   - ptc-php-fpm
   - nginx
```
You can now access Laravel from your browser using http://localhost:8000/