document.addEventListener('DOMContentLoaded', () => {
    const blogName = 'YOUR_TUMBLR_BLOG_NAME';
    const apiKey = 'YOUR_TUMBLR_API_KEY';

    fetch(`https://api.tumblr.com/v2/blog/${blogName}.tumblr.com/posts?api_key=${apiKey}&limit=3`)
        .then(response => response.json())
        .then(data => {
            const posts = data.response.posts;
            posts.forEach((post, index) => {
                const postElement = document.createElement('div');
                postElement.classList.add('card');
                postElement.innerHTML = `
                    <div class="card-body">
                        <h2>${post.title || 'Untitled'}</h2>
                        <p>${post.summary}</p>
                        <a href="${post.post_url}" target="_blank" class="btn btn-primary">Read More</a>
                    </div>
                `;
                document.getElementById(`tumblr-post-${index + 1}`).appendChild(postElement);
            });
        })
        .catch(error => console.error('Error fetching Tumblr posts:', error));
});
