document.addEventListener('DOMContentLoaded', (event) => {
    const input = document.querySelector('#voiture');
    const suggestions = document.querySelector('.suggestions ul');
    let Listtab = [];
    fetch('recup.element.php')
        .then((response) => response.json())
        .then((response) => {
            // console.log(response);
            for (let i = 0; i < response.length; i++) {
                let type = response[i].Nom

                Listtab.push(type.toString())
                    // console.log(response[i].Nom)
            }
            // console.log(Listtab)
        })
        .catch((error) => console.log(error))


    function search(str) {
        let results = [];
        const val = str.toLowerCase();

        for (i = 0; i < Listtab.length; i++) {
            if (Listtab[i].toLowerCase().indexOf(val) > -1) {
                results.push(Listtab[i]);

            }
        }

        return results;
    }

    function searchHandler(e) {
        const inputVal = e.currentTarget.value;
        let results = [];
        if (inputVal.length > 0) {
            results = search(inputVal);
        }
        showSuggestions(results, inputVal);
    }

    function showSuggestions(results, inputVal, resultid) {

        suggestions.innerHTML = '';

        if (results.length > 0) {
            for (i = 0; i < results.length; i++) {
                let item = results[i];
                const match = item.match(new RegExp(inputVal, 'i'));
                item = item.replace(match[0], `<strong>${match[0]}</strong>`);

                suggestions.innerHTML += `<li>${item}</li>`;
            }
            suggestions.classList.add('has-suggestions');
        } else {
            results = [];
            suggestions.innerHTML = '';
            suggestions.classList.remove('has-suggestions');
        }
    }

    function useSuggestion(e) {
        input.value = e.target.innerText;
        input.focus();
        suggestions.innerHTML = '';
        suggestions.classList.remove('has-suggestions');
    }

    input.addEventListener('keyup', searchHandler);
    suggestions.addEventListener('click', useSuggestion);
})