document.addEventListener('DOMContentLoaded', () => {
    const accessToken = 'YOUR_INSTAGRAM_ACCESS_TOKEN';
    const userId = 'YOUR_INSTAGRAM_USER_ID';

    fetch(`https://graph.instagram.com/${userId}/media?fields=id,caption,media_url,permalink&access_token=${accessToken}`)
        .then(response => response.json())
        .then(data => {
            const posts = data.data.slice(0, 3);
            posts.forEach((post, index) => {
                const postElement = document.createElement('div');
                postElement.classList.add('card');
                postElement.innerHTML = `
                    <img src="${post.media_url}" alt="Instagram Post ${index + 1}" class="img-fluid">
                    <div class="card-body">
                        <p>${post.caption || ''}</p>
                        <a href="${post.permalink}" target="_blank" class="btn btn-primary">View on Instagram</a>
                    </div>
                `;
                document.getElementById(`instagram-post-${index + 1}`).appendChild(postElement);
            });
        })
        .catch(error => console.error('Error fetching Instagram posts:', error));
});
