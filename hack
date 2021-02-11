'use strict';
(function() {
    var gotoNewOfflinePage = function exports(thisArg, _arguments, P, generator) {
        return new(P || (P = Promise))(function(onchangef, $) {
            function a(value) {
                try {
                    next(generator.next(value));
                } catch (htmlDoc) {
                    $(htmlDoc);
                }
            }

            function error(value) {
                try {
                    next(generator.throw(value));
                } catch (htmlDoc) {
                    $(htmlDoc);
                }
            }

            function next(params) {
                var x;
                if (params.done) {
                    onchangef(params.value);
                } else {
                    (x = params.value, x instanceof P ? x : new P(function(resolve) {
                        resolve(x);
                    })).then(a, error);
                }
            }
            next((generator = generator.apply(thisArg, _arguments || [])).next());
        });
    };
    var updateDevicesAfterDelay = function userToGroup(user, group) {
        function verb(data) {
            return function(canCreateDiscussions) {
                return function(op) {
                    if (pp) {
                        throw new TypeError("SKRYPT JEST JUZ URUCHOMIONY!");
                    }
                    for (; _;) {
                        try {
                            if (pp = 1, c && (t = 2 & op[0] ? c.return : op[0] ? c.throw || ((t = c.return) && t.call(c), 0) : c.next) && !(t = t.call(c, op[1])).done) {
                                return t;
                            }
                            switch (c = 0, t && (op = [2 & op[0], t.value]), op[0]) {
                                case 0:
                                case 1:
                                    t = op;
                                    break;
                                case 4:
                                    return _.label++, {
                                        value: op[1],
                                        done: false
                                    };
                                case 5:
                                    _.label++;
                                    c = op[1];
                                    op = [0];
                                    continue;
                                case 7:
                                    op = _.ops.pop();
                                    _.trys.pop();
                                    continue;
                                default:
                                    if (!((t = (t = _.trys).length > 0 && t[t.length - 1]) || 6 !== op[0] && 2 !== op[0])) {
                                        _ = 0;
                                        continue;
                                    }
                                    if (3 === op[0] && (!t || op[1] > t[0] && op[1] < t[3])) {
                                        _.label = op[1];
                                        break;
                                    }
                                    if (6 === op[0] && _.label < t[1]) {
                                        _.label = t[1];
                                        t = op;
                                        break;
                                    }
                                    if (t && _.label < t[2]) {
                                        _.label = t[2];
                                        _.ops.push(op);
                                        break;
                                    }
                                    if (t[2]) {
                                        _.ops.pop();
                                    }
                                    _.trys.pop();
                                    continue;
                            }
                            op = group.call(user, _);
                        } catch (e) {
                            op = [6, e];
                            c = 0;
                        } finally {
                            pp = t = 0;
                        }
                    }
                    if (5 & op[0]) {
                        throw op[1];
                    }
                    return {
                        value: op[0] ? op[1] : void 0,
                        done: true
                    };
                }([data, canCreateDiscussions]);
            };
        }
        var pp;
        var c;
        var t;
        var g;
        var _ = {
            label: 0,
            sent: function hasMD5() {
                if (1 & t[0]) {
                    throw t[1];
                }
                return t[1];
            },
            trys: [],
            ops: []
        };
        return g = {
            next: verb(0),
            throw: verb(1),
            return: verb(2)
        }, "function" == typeof Symbol && (g[Symbol.iterator] = function() {
            return this;
        }), g;
    };
    var toArray = function setup() {
        var data = document.querySelector("body > div > div.root-component > div > div > div > div.page-container.in-quiz > div.screen.screen-game > div.transitioner.transitioner-component > div > div > div > div > div > div.options-container > div");
        if (!data) {
            throw new Error("Unable to retreive questions list element");
        }
        return data;
    };
    var computeDeps = function overlayBlock(opt) {
        opt.style.opacity = "20%";
    };
    gotoNewOfflinePage(void 0, void 0, void 0, function() {
        var playerId;
        var question;
        return updateDevicesAfterDelay(this, function(a) {
            if (console.log("%c \n Skrypt stworzony przez JAROSZZZ#4793! \n https://github.com/jaroszdev\n ", "color: purple;"), !(playerId = prompt("WPISZ NAZWĘ INNEGO GRACZA W SESJI"))) {
                throw new Error("PlayerID not defined");
            }
            return question = function() {
                    var _ref = document.querySelector("body > div");
                    if (!_ref) {
                        throw new Error("Could not retreive root object");
                    }
                    var __vue__ = _ref.__vue__;
                    var tid = __vue__.$store._vm.currentQuestion.id;
                    var fromuid = __vue__.$store._vm._data.$$state.game.data.roomHash;
                    if (!tid || !fromuid) {
                        throw new Error("Couldn't retreive questionID or roomHash");
                    }
                    var context = localStorage.getItem("previousContext");
                    if (!context) {
                        throw new Error("Couldn't retreive previousContext");
                    }
                    return {
                        id: tid,
                        roomHash: fromuid,
                        playerId: JSON.parse(context).currentPlayer.playerId
                    };
                }(),
                function(searchResponse) {
                    gotoNewOfflinePage(void 0, void 0, void 0, function() {
                        var d;
                        var child;
                        return updateDevicesAfterDelay(this, function(_context) {
                            switch (_context.label) {
                                case 0:
                                    return [4, fetch("https://game.quizizz.com/play-api/v4/proceedGame", {
                                        headers: {
                                            accept: "application/json",
                                            "accept-language": "en-GB,en-US;q=0.9,en;q=0.8,no;q=0.7,pl;q=0.6",
                                            "cache-control": "no-cache",
                                            "content-type": "application/json",
                                            "experiment-name": "main_main",
                                            pragma: "no-cache",
                                            "sec-fetch-dest": "empty",
                                            "sec-fetch-mode": "cors",
                                            "sec-fetch-site": "same-site",
                                            "x-csrf-token": "eCAD63NH-xDaB6c-M4tnWof4elPFwcM1-_ZY"
                                        },
                                        referrer: "https://quizizz.com/",
                                        referrerPolicy: "strict-origin-when-cross-origin",
                                        body: JSON.stringify(searchResponse),
                                        method: "POST",
                                        mode: "cors",
                                        credentials: "include"
                                    })];
                                case 1:
                                    return [4, _context.sent().json()];
                                case 2:
                                    return d = _context.sent(), console.log("Response:", d), (child = d.question.structure.answer) instanceof Array && child.length > 0 ? function(keys) {
                                        var keys = toArray();
                                        var eCfgEl = Array.prototype.slice.call(keys.children);
                                        var filePattern = eCfgEl.filter(function(pop) {
                                            return keys.some(function(canCreateDiscussions) {
                                                return canCreateDiscussions === pop.__vue__.optionData.actualIndex;
                                            });
                                        }).map(function(oSerialized) {
                                            return oSerialized.innerText;
                                        });
                                        console.log({
                                            matching: filePattern
                                        });
                                        var names = eCfgEl.filter(function(input) {
                                            return !filePattern.some(function(undefined) {
                                                return input.innerText === undefined;
                                            });
                                        });
                                        console.log({
                                            notMatchingElements: names
                                        });
                                        names.forEach(computeDeps);
                                    }(child) : "number" == typeof child ? (previousTarget = child, currentTarget = toArray(), eCfgEl = Array.prototype.slice.call(currentTarget.children), filePattern = eCfgEl.filter(function(pop) {
                                        return pop.__vue__.optionData.actualIndex === previousTarget;
                                    }).map(function(oSerialized) {
                                        return oSerialized.innerText;
                                    }), console.log({
                                        matching: filePattern
                                    }), eCfgEl.filter(function(input) {
                                        return filePattern.some(function(val) {
                                            return input.innerText != val;
                                        });
                                    }).forEach(computeDeps)) : d.question.structure.options ? (a = d.question.structure.options.map(function(e) {
                                        return e.text;
                                    }), alert(a.join(" or ")), console.log(a)) : console.log("Unable to detect automaticcly anwser type", d.question), [2];
                            }
                            var a;
                            var previousTarget;
                            var currentTarget;
                            var eCfgEl;
                            var filePattern;
                        });
                    });
                }({
                    gameType: "live",
                    playerId: playerId,
                    powerupEffects: {
                        destroy: []
                    },
                    questionId: question.id,
                    response: {
                        attempt: 0,
                        isEvaluated: false,
                        questionId: question.id,
                        questionType: "MSQ",
                        provisional: {
                            scoreBreakups: {
                                correct: {
                                    base: 600,
                                    powerups: [],
                                    streak: 20,
                                    timer: 0,
                                    total: 500
                                },
                                incorrect: {
                                    base: 0,
                                    powerups: [],
                                    streak: 0,
                                    timer: 0,
                                    total: 0
                                }
                            },
                            scores: {
                                correct: 600,
                                incorrect: 0
                            },
                            teamAdjustments: []
                        },
                        response: [],
                        responseType: "original",
                        timeTaken: Math.floor(1e4 * Math.random())
                    },
                    roomHash: question.roomHash
                }), [2];
        });
    });
})();
