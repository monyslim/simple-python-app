myname="username:james:password=password1"

#Extract the userarea from the "myname" variable
userarea=$(echo "$myname" | cut -d= -f1)

# Extracting the password area from the "myname" variable
password_area=$(echo "$myname" | cut -d: -f3)
# Extracting the username from the "userarea" variable
username=$(echo "$userarea" | cut -d: -f2)
# Extracting the password from the "password_area" variable
password=$(echo "$password_area" | cut -d= -f2)


# Creating directories based on the username and password
mkdir -p "$username"

# Check if the directory exists
if [ -d "$username" ]; then
    echo "Directory '$username' created successfully moving on .... "

    # Move into the current directory for the user with a delay of 3 seconds
    sleep 3
    cd "$username" || exit

    # Create a file to store the password
    echo "$password" > password.txt

    # Display a welcome message
    echo "Welcome, $username! Your password has been saved inside the directory."
else
    echo "Failed to create directory '$username'."
fi