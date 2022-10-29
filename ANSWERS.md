**Q: How long did it take to finish the test?**

A: Around 10 hours.

**Q: If you had more time, how could you improve your solution?**

A: I would have found out a way of redirecting HTTP traffic to HTTPS without having endless loops or any other weird thing.

**Q: What changes would you do to your solution to be deployed in a production environment?**

A: In the `main.py` file I would use `dotenv` to load the environment variables and set the host and port variables there. Moreover, I would sign a certificate from a trusted source, not a self-signed certificate. And lastly I would need to resolve the redirection to HTTPS, which is a TODO in this solution.

**Q: Why did you choose this language over others?**

A: Python is my general purpose language for most things, and is straightforward enough for me to focus on investigating other stuff that I'm not very familiar with, or not familiar at all.

**Q: What was the most challenging part and why?**

A: A few challenging parts. First the self-signed certificate was giving me headaches because even though I had it correct in my head I didn't do the full path as explained [here](https://betterprogramming.pub/how-to-create-trusted-ssl-certificates-for-your-local-development-13fd5aad29c6), where I found what I was missing, which was actually signing the certificate and making my machine to trust it. Then the nginx configuration to redirect the traffic. I am not familiar with this kind of syntax since I've never configured a reverse-proxy manually before, so I had to search here and there to get what I wanted despite the redirection not working as everybody claims on the forums I've looked into. Lastly I decided I'd push myself a bit and implementing the deployment script in PowerShell, since it's a cross-platform and more modern scripting language than the old but trustworthy bash.