const months = [
    {
        date: "01",
        name: "Январь",
        numberOfDays: 31,
        startsWith: 7
    },
    {
        date: "02",
        name: "Февраль",
        numberOfDays: 28,
        startsWith: 3
    },
    {
        date: "03",
        name: "Март",
        numberOfDays: 31,
        startsWith: 3
    },
    {
        date: "04",
        name: "Апрель",
        numberOfDays: 30,
        startsWith: 6
    },
    {
        date: "05",
        name: "Май",
        numberOfDays: 31,
        startsWith: 1
    },
    {
        date: "06",
        name: "Июнь",
        numberOfDays: 30,
        startsWith: 4
    },
    {
        date: "07",
        name: "Июль",
        numberOfDays: 31,
        startsWith: 6
    },
    {
        date: "08",
        name: "Август",
        numberOfDays: 31,
        startsWith: 2
    },
    {
        date: "09",
        name: "Сентябрь",
        numberOfDays: 30,
        startsWith: 5
    },
    {
        date: "10",
        name: "Октябрь",
        numberOfDays: 31,
        startsWith: 7
    },
    {
        date: "11",
        name: "Ноябрь",
        numberOfDays: 30,
        startsWith: 3
    },
    {
        date: "12",
        name: "Декабрь",
        numberOfDays: 31,
        startsWith: 5
    },
];

const weekDays = ["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Вс"];
const sideColumn = Array(6).fill(0, 0);

const calendarWrap = document.querySelector(".calendar-wrap");

const calendar = document.createElement("ul");
calendar.className = "calendar";


for (let i = 0; i < months.length; i++) {
    let month = document.createElement("li");
    month.className = "month";

    const dates = [ ...Array(months[i].numberOfDays).keys()];
    const prevDates = [ ...Array(months[i].startsWith - 1).keys()];
    const nextDates = [ ...Array(7 * 6 - (prevDates.length - 1 + months[i].numberOfDays) - 1).keys()];

    month.innerHTML = `
        <a href="/subjects/month/${months[i].date}"><h1 class="name">${months[i].name}</h1></a>
        <div class="date-table">
            <div class="left-side-column">
                
            </div>
            <div class="main-block">
                <div class="top-row">
                    ${weekDays.reduce((accumulator, item) => 
                        accumulator + `<p class="weekDay">${item}</p>`,
                    "")}
                </div>
                <div class="dates">
                    ${prevDates.reduce((accumulator, item) => 
                        accumulator + `<p class="previous-date">${months[i - 1 >= 0 ? i - 1 : 11].numberOfDays - (prevDates.length - (item + 1))}</p>`,
                    "")}
                    
                    ${dates.reduce((accumulator, item) => 
                        accumulator + `<p class="date"><a href="/subjects/day/${(item+1).toString().padStart(2, '0')}.${months[i].date}.2023">${item + 1}</a></p>`,
                    "")}
                    ${nextDates.reduce((accumulator, item) => 
                        accumulator + `<p class="next-date">${item + 1}</p>`,
                    "")}
                </div>
            </div>
        </div>
    `;

    calendar.appendChild(month);
}

calendarWrap.appendChild(calendar);


