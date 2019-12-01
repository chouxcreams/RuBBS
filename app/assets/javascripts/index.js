var vm = new Vue({
    el: "#app",
    data: {
        query: {
            userId: null,
            start: null,
            end: null
        }
    },
    created: function() {
        const url = 'http://localhost:3000/';
        fetch(url + "/api/board", {
            method: "GET"
        })
            .then(function (response) {
                if (response.status === 200) {
                    return response.json();
                }
                return response.json().then(function (json) {
                    throw new Error(json.message);
                });
            })
            .then(function (json) {
                vm.posts = json;
            })
            .catch(function (err) {
                console.error(err);
            });

    }
});