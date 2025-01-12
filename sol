(self.webpackChunk_N_E = self.webpackChunk_N_E || []).push([[166], {
    81221: (e, t, a) => {
        Promise.resolve().then(a.bind(a, 30964)),
        Promise.resolve().then(a.bind(a, 17842)),
        Promise.resolve().then(a.bind(a, 94396)),
        Promise.resolve().then(a.bind(a, 88879)),
        Promise.resolve().then(a.bind(a, 36077))
    }
    ,
    3542: (e, t, a) => {
        "use strict";
        a.d(t, {
            default: () => n.a
        });
        var s = a(87867)
          , n = a.n(s)
    }
    ,
    3081: (e, t, a) => {
        "use strict";
        var s = a(94965);
        a.o(s, "useParams") && a.d(t, {
            useParams: function() {
                return s.useParams
            }
        }),
        a.o(s, "usePathname") && a.d(t, {
            usePathname: function() {
                return s.usePathname
            }
        }),
        a.o(s, "useRouter") && a.d(t, {
            useRouter: function() {
                return s.useRouter
            }
        }),
        a.o(s, "useSearchParams") && a.d(t, {
            useSearchParams: function() {
                return s.useSearchParams
            }
        })
    }
    ,
    87867: (e, t, a) => {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        }),
        Object.defineProperty(t, "default", {
            enumerable: !0,
            get: function() {
                return n
            }
        });
        let s = a(13040)._(a(31867));
        function n(e, t) {
            var a;
            let n = {};
            "function" == typeof e && (n.loader = e);
            let i = {
                ...n,
                ...t
            };
            return (0,
            s.default)({
                ...i,
                modules: null == (a = i.loadableGenerated) ? void 0 : a.modules
            })
        }
        ("function" == typeof t.default || "object" == typeof t.default && null !== t.default) && void 0 === t.default.__esModule && (Object.defineProperty(t.default, "__esModule", {
            value: !0
        }),
        Object.assign(t.default, t),
        e.exports = t.default)
    }
    ,
    40824: (e, t, a) => {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        }),
        Object.defineProperty(t, "BailoutToCSR", {
            enumerable: !0,
            get: function() {
                return n
            }
        });
        let s = a(46396);
        function n(e) {
            let {reason: t, children: a} = e;
            if ("undefined" == typeof window)
                throw new s.BailoutToCSRError(t);
            return a
        }
    }
    ,
    31867: (e, t, a) => {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        }),
        Object.defineProperty(t, "default", {
            enumerable: !0,
            get: function() {
                return c
            }
        });
        let s = a(59386)
          , n = a(95186)
          , i = a(40824)
          , r = a(67941);
        function l(e) {
            return {
                default: e && "default"in e ? e.default : e
            }
        }
        let o = {
            loader: () => Promise.resolve(l( () => null)),
            loading: null,
            ssr: !0
        }
          , c = function(e) {
            let t = {
                ...o,
                ...e
            }
              , a = (0,
            n.lazy)( () => t.loader().then(l))
              , c = t.loading;
            function d(e) {
                let l = c ? (0,
                s.jsx)(c, {
                    isLoading: !0,
                    pastDelay: !0,
                    error: null
                }) : null
                  , o = !t.ssr || !!t.loading
                  , d = o ? n.Suspense : n.Fragment
                  , h = t.ssr ? (0,
                s.jsxs)(s.Fragment, {
                    children: ["undefined" == typeof window ? (0,
                    s.jsx)(r.PreloadChunks, {
                        moduleIds: t.modules
                    }) : null, (0,
                    s.jsx)(a, {
                        ...e
                    })]
                }) : (0,
                s.jsx)(i.BailoutToCSR, {
                    reason: "next/dynamic",
                    children: (0,
                    s.jsx)(a, {
                        ...e
                    })
                });
                return (0,
                s.jsx)(d, {
                    ...o ? {
                        fallback: l
                    } : {},
                    children: h
                })
            }
            return d.displayName = "LoadableComponent",
            d
        }
    }
    ,
    67941: (e, t, a) => {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        }),
        Object.defineProperty(t, "PreloadChunks", {
            enumerable: !0,
            get: function() {
                return l
            }
        });
        let s = a(59386)
          , n = a(41039)
          , i = a(36542)
          , r = a(43155);
        function l(e) {
            let {moduleIds: t} = e;
            if ("undefined" != typeof window)
                return null;
            let a = i.workAsyncStorage.getStore();
            if (void 0 === a)
                return null;
            let l = [];
            if (a.reactLoadableManifest && t) {
                let e = a.reactLoadableManifest;
                for (let a of t) {
                    if (!e[a])
                        continue;
                    let t = e[a].files;
                    l.push(...t)
                }
            }
            return 0 === l.length ? null : (0,
            s.jsx)(s.Fragment, {
                children: l.map(e => {
                    let t = a.assetPrefix + "/_next/" + (0,
                    r.encodeURIPath)(e);
                    return e.endsWith(".css") ? (0,
                    s.jsx)("link", {
                        precedence: "dynamic",
                        href: t,
                        rel: "stylesheet",
                        as: "style"
                    }, e) : ((0,
                    n.preload)(t, {
                        as: "script",
                        fetchPriority: "low"
                    }),
                    null)
                }
                )
            })
        }
    }
    ,
    30964: (e, t, a) => {
        "use strict";
        a.d(t, {
            default: () => p
        });
        var s = a(59386)
          , n = a(21292)
          , i = a(71946)
          , r = a(29795)
          , l = a(95186);
        function o() {
            let[e,t] = (0,
            l.useState)({
                days: 6,
                hours: 12,
                minutes: 32
            });
            return (0,
            s.jsx)("div", {
                className: "w-full pt-6 mt-10",
                children: (0,
                s.jsx)("div", {
                    className: "container mx-auto px-4",
                    children: (0,
                    s.jsxs)("div", {
                        className: "grid grid-cols-1 md:grid-cols-2 divide-y md:divide-y-0 md:divide-x divide-white",
                        children: [(0,
                        s.jsxs)("div", {
                            className: "p-4 text-center text-white",
                            children: [(0,
                            s.jsx)("div", {
                                className: "mb-2 text-xl ",
                                children: "Sale start"
                            }), (0,
                            s.jsx)("div", {
                                className: "text-2xl font-medium",
                                children: r.UP
                            })]
                        }), (0,
                        s.jsxs)("div", {
                            className: "p-4 text-center text-white",
                            children: [(0,
                            s.jsx)("div", {
                                className: "mb-2 text-xl ",
                                children: "Sale end"
                            }), (0,
                            s.jsx)("div", {
                                className: "text-2xl font-medium",
                                children: r.i2
                            })]
                        })]
                    })
                })
            })
        }
        var c = a(24300)
          , d = a(30746)
          , h = a(10745)
          , u = a(79312);
        let m = (0,
        a(3542).default)( () => a.e(602).then(a.bind(a, 73221)), {
            loadableGenerated: {
                webpack: () => [73221]
            },
            ssr: !1
        });
        function p(e) {
            let {saleStatus: t} = e
              , [a,r] = (0,
            l.useState)(!1)
              , {isConnected: p, address: f} = (0,
            d.G8)()
              , {getState: x} = (0,
            u.U)()
              , {sumsubKYC: y} = x()
              , {status: b, loadingKyc: g} = y || {}
              , j = (0,
            l.useCallback)( () => {
                let e = document.getElementById("sale-module");
                e && e.scrollIntoView({
                    behavior: "smooth"
                })
            }
            , []);
            return (0,
            s.jsxs)("div", {
                className: "relative pt-[150px] md:pt-[12%] min-h-[80vh] md:min-h-[70vh] w-full flex flex-col items-center justify-between p-4 overflow-hidden",
                children: [(0,
                s.jsxs)("div", {
                    className: "absolute top-0 left-0 w-full h-full -z-10",
                    children: [(0,
                    s.jsx)(n.default, {
                        src: "/solayer-banner.jpg",
                        alt: "Solayer Banner",
                        fill: !0,
                        className: "object-cover transition-opacity duration-300 ".concat(a ? "opacity-100" : "opacity-0")
                    }), (0,
                    s.jsx)("video", {
                        autoPlay: !0,
                        muted: !0,
                        playsInline: !0,
                        className: "absolute top-0 left-0 w-full h-full object-cover transition-opacity duration-300 ".concat(a ? "opacity-0" : "opacity-100"),
                        style: {
                            backgroundColor: "rgb(8, 77, 62)"
                        },
                        onEnded: () => r(!0),
                        children: (0,
                        s.jsx)("source", {
                            src: "/solayer-video.mp4",
                            type: "video/mp4"
                        })
                    })]
                }), (0,
                s.jsx)("div", {
                    className: "absolute top-0 left-0 w-full h-full bg-[rgb(8,77,62)]/40 -z-[5]"
                }), (0,
                s.jsxs)("div", {
                    className: "flex flex-col gap-8 items-center justify-center",
                    children: [(0,
                    s.jsx)(n.default, {
                        style: {
                            zIndex: 9
                        },
                        src: "/solayer-logo.svg",
                        width: 337,
                        height: 64,
                        alt: "solayer"
                    }), (0,
                    s.jsx)("p", {
                        className: "text-white text-center text-3xl md:text-4xl font-['satoshi']",
                        children: "Product Introduction and Community Sale"
                    })]
                }), t !== c.TZ.Initial ? (0,
                s.jsx)(i.$, {
                    variant: "ghost",
                    id: "participate",
                    className: "border-white bg-transparent text-white border-[1px] w-[187px] h-[48px] mt-6",
                    onClick: j,
                    children: "Jump to participate"
                }) : (0,
                s.jsx)("div", {
                    className: "flex flex-col items-center justify-center w-[187px] h-[48px]",
                    children: p ? (0,
                    s.jsx)(s.Fragment, {
                        children: !g && f && (!b || "retry" === b) && (0,
                        s.jsx)(h.A, {
                            buttonCls: "border-white bg-transparent  text-white border-[1px]  mt-6 hover:bg-transparent",
                            isRetry: "retry" === b
                        })
                    }) : (0,
                    s.jsx)(m, {})
                }), (0,
                s.jsx)(o, {})]
            })
        }
    }
    ,
    17842: (e, t, a) => {
        "use strict";
        a.d(t, {
            default: () => h
        });
        var s = a(59386)
          , n = a(95186)
          , i = a(85338)
          , r = a(29795)
          , l = a(21292);
        let o = [{
            title: "Project Summary",
            id: "project-summary"
        }, {
            title: "Key highlights",
            id: "key-highlights"
        }, {
            title: "Public sale structure",
            id: "public-sale"
        }, {
            title: "Tokenomics",
            id: "tokenomics"
        }, {
            title: "Tokenomics explanations",
            id: "tokenomics-explanation"
        }, {
            title: "Product traction",
            id: "traction"
        }, {
            title: "Ecosystem & partners",
            id: "partners"
        }, {
            title: "Community links",
            id: "community-links"
        }]
          , c = (0,
        n.memo)(e => {
            let {children: t} = e;
            return (0,
            s.jsx)("h2", {
                className: "text-3xl font-medium mb-6",
                children: t
            })
        }
        )
          , d = (0,
        n.memo)(e => {
            let {children: t} = e;
            return (0,
            s.jsx)("p", {
                className: "text-gray-600 mb-4 break-words text-[18px] leading-6 md:leading-7 font-['satoshi']",
                children: t
            })
        }
        );
        function h() {
            let[e,t] = (0,
            n.useState)("project-summary")
              , a = (0,
            n.useCallback)(e => {
                t(e);
                let a = document.getElementById(e);
                a && a.scrollIntoView({
                    behavior: "smooth"
                })
            }
            , []);
            return (0,
            s.jsxs)("div", {
                className: "flex min-h-screen font-['satoshi'] px-2 md:px-[8vw]",
                children: [(0,
                s.jsx)("nav", {
                    className: "w-64  sticky top-0 h-screen overflow-y-auto p-6 flex-col hidden md:flex",
                    children: (0,
                    s.jsx)("div", {
                        className: "space-y-0",
                        children: o.map(t => (0,
                        s.jsxs)("button", {
                            onClick: () => a(t.id),
                            className: "block w-full text-left px-3 py-3 text-xl rounded-md  transition-colors relative ".concat(e === t.id ? "font-medium text-[#084D3E]" : "text-gray-600 hover:bg-gray-50"),
                            children: [(0,
                            s.jsx)("span", {
                                className: "absolute left-0 top-0 bottom-0 w-0.5 transition-colors ".concat(e === t.id ? "bg-[#084D3E]" : "bg-gray-300")
                            }), t.title]
                        }, t.id))
                    })
                }), (0,
                s.jsx)("main", {
                    className: "flex-1 p-4 md:p-8 w-full",
                    children: (0,
                    s.jsxs)("div", {
                        className: "max-w-[100%] md:max-w-3xl w-full mx-auto ",
                        children: [(0,
                        s.jsxs)("section", {
                            id: "project-summary",
                            className: "mb-16",
                            children: [(0,
                            s.jsx)(c, {
                                children: "// Project Summary"
                            }), (0,
                            s.jsx)(d, {
                                children: "Solayer is developing InfiniSVM, a next-generation blockchain architecture that can achieve unprecedented throughput, low latency, and robust composability. InfiniSVM architecture leverages Infiniband RDMA for near-microsecond inter-node communication and advanced concurrency control strategies. It pushes blockchain performance to hardware limits, targeting 1M+ TPS and 100Gbps+ network bandwidth. This design provides a path for next-generation applications that require high throughput, low fees, and a seamless composable environment. Solayer was launched in Q1 2024."
                            })]
                        }), (0,
                        s.jsxs)("section", {
                            id: "key-highlights",
                            className: "mb-16",
                            children: [(0,
                            s.jsx)(c, {
                                children: "// Key project highlights"
                            }), (0,
                            s.jsx)(d, {
                                children: "Solayer has previously established its foundation from its staking infrastructure on Solana with the launch of native SOL staking which accumulated $350 million in TVL. Additionally, Solayer has launched the first yield-bearing stablecoin backed by T-bill yield on Solana, Solayer USD (sUSD). sUSD introduces a stable, yield-bearing option, while allowing users to secure decentralized services."
                            }), (0,
                            s.jsx)(d, {
                                children: "Solayer is now launching InfiniSVM, a high throughput and near-zero latency blockchain. This is made possible by leveraging Infiniband technology, dedicated hardware to enable wire-speed execution, and multi-executor clusters to power the fastest edge distributed processing."
                            }), (0,
                            s.jsx)("div", {
                                className: "space-y-6",
                                children: (0,
                                s.jsxs)("div", {
                                    children: [(0,
                                    s.jsx)("h3", {
                                        className: "text-xl font-semibold mb-2",
                                        children: "Technology"
                                    }), (0,
                                    s.jsx)(d, {
                                        children: "InfiniSVM advocates for a multi-executor, hardware-accelerated SVM network. It uses Software-defined Networking (SDN) switches and Remote Direct Memory Access (RDMA) to dynamically shard a single execution machine of SVM, to infinite machines, as applications demand it."
                                    }), (0,
                                    s.jsx)(d, {
                                        children: "By offloading every component of Solana onto programmable hardware switches, it scales Solana infinitely while preserving a global atomic state. The architecture decomposes critical pipeline stages into microservices to scale non-atomic components like ingress and state publishing, hardware acceleration for scheduling and locking, a sharded database for scaling storage, and a new hybrid consensus protocol based on Solana that guarantees both security and low latency."
                                    }), (0,
                                    s.jsx)(d, {
                                        children: "To further increase usability, InfiniSVM introduces chain-level support of hooks, cross-chain contract calls, jumbo transactions, seamless wallet support, and OAuth-based signers. Overall, it aims to become the most user-friendly chain with 1M+ TPS and 100Gbps+ bandwidth."
                                    }), (0,
                                    s.jsx)(d, {
                                        children: "Remote Direct Memory Access (RDMA) enables zero-copy data transfer directly between application memory spaces across the network. This architecture bypasses traditional operating system networking stacks, eliminating context switches and CPU overhead associated with network I/O processing. InfiniBand is a prominent implementation of RDMA, offering a high-speed, low-latency networking architecture tailored for high-performance computing and data center environments. Its efficiency and scalability have led to widespread adoption in distributed machine learning and other data-intensive applications."
                                    }), (0,
                                    s.jsx)(d, {
                                        children: "Software-defined Networking (SDN) separates the control plane from the data plane, enabling programmatic control over network behavior through a logically centralized controller. This programmability enables implementation of complex network functions like load balancing, traffic engineering, and network virtualization directly in the data plane while maintaining line-rate performance."
                                    }), (0,
                                    s.jsxs)(d, {
                                        children: ["For more information about Solayer's innovation and technologies, please check out their litepaper on", " ", (0,
                                        s.jsx)("a", {
                                            className: "underline",
                                            target: "_blank",
                                            href: "https://solayer.org/network",
                                            children: "https://solayer.org/network"
                                        }), "."]
                                    })]
                                })
                            })]
                        }), (0,
                        s.jsxs)("section", {
                            id: "public-sale",
                            className: "mb-16",
                            children: [(0,
                            s.jsx)(c, {
                                children: "// Community Sale terms"
                            }), (0,
                            s.jsx)(d, {
                                children: "Buidlpad is excited to introduce the Solayer Community Sale. Purchasers are eligible to claim 100% of their $LAYER tokens allocations at the token generation event with no lockup or vesting. Please review all of the below details before you participate."
                            }), (0,
                            s.jsx)(d, {
                                children: "During the Community Sale process, participants have an opportunity to get the Solayer Emerald Metal Card, a crypto debit card issued by Solayer. It is a Visa virtual and physical card that can be used online and offline for off-ramp and fiat spendings. Exact timeline for this product will be announced separately by Solayer."
                            }), (0,
                            s.jsx)("div", {
                                className: "relative w-full aspect-[800/376]",
                                children: (0,
                                s.jsx)(l.default, {
                                    src: "/debit-card.jpg",
                                    alt: "Solayer Card",
                                    fill: !0,
                                    className: "object-contain",
                                    sizes: "60vw"
                                })
                            }), (0,
                            s.jsx)("p", {
                                className: "font-medium text-2xl mt-6 mb-3",
                                children: "Solayer Community Sale Details"
                            }), (0,
                            s.jsx)(i.XI, {
                                className: "border-t border-b border-[#E5E7EB]",
                                children: (0,
                                s.jsx)(i.BF, {
                                    children: r.Yz.map( (e, t) => (0,
                                    s.jsxs)(i.Hj, {
                                        className: "h-[80px] border-b border-l-0 border-r-0 text-[18px] leading-6",
                                        children: [(0,
                                        s.jsx)(i.nA, {
                                            className: "font-medium border-x px-3 py-4",
                                            children: e.label
                                        }), (0,
                                        s.jsx)(i.nA, {
                                            className: "border-x text-[18px] leading-6 font-normal px-3 py-4",
                                            children: e.value
                                        })]
                                    }, t))
                                })
                            })]
                        }), (0,
                        s.jsxs)("section", {
                            id: "tokenomics-explanation",
                            className: "mb-16",
                            children: [(0,
                            s.jsx)(c, {
                                children: "// Tokenomics explanations"
                            }), (0,
                            s.jsxs)(d, {
                                children: ["The Solayer $LAYER token will be the native token for its InfiniSVM and used for governance, and users will be able to use the $LAYER token to vote on key changes to Solayer and InfiniSVM such as:", (0,
                                s.jsxs)("ul", {
                                    className: "list-disc marker:mr-2 pl-5 space-y-1",
                                    children: [(0,
                                    s.jsx)("li", {
                                        className: "ml-5",
                                        children: "Inclusion of new delegation partners"
                                    }), (0,
                                    s.jsx)("li", {
                                        className: "ml-5",
                                        children: "Future project direction"
                                    }), (0,
                                    s.jsx)("li", {
                                        className: "ml-5",
                                        children: "Project and product improvements"
                                    }), (0,
                                    s.jsx)("li", {
                                        className: "ml-5",
                                        children: "Technical upgrades"
                                    }), (0,
                                    s.jsx)("li", {
                                        className: "ml-5",
                                        children: "Ecosystem grants"
                                    })]
                                })]
                            })]
                        }), (0,
                        s.jsxs)("section", {
                            id: "traction",
                            className: "mb-16",
                            children: [(0,
                            s.jsx)(c, {
                                children: "// Product traction"
                            }), (0,
                            s.jsxs)(d, {
                                children: ["Restaking with native SOL for Solayer SOL (sSOL) and LSTs such as mSOL, bSOL, jitoSOL etc. went live in Q1 2024, and has accumulated over $350M in TVL since. ", (0,
                                s.jsx)("br", {}), (0,
                                s.jsx)("a", {
                                    className: "underline",
                                    target: "_blank",
                                    href: "https://defillama.com/protocol/solayer-restaking#information",
                                    children: "https://defillama.com/protocol/solayer-restaking#information"
                                })]
                            }), (0,
                            s.jsxs)(d, {
                                children: ["Solayer then launched Solayer USD (sUSD) at the end of October 2024 and has gained over $30M in TVL for sUSD. ", (0,
                                s.jsx)("br", {}), (0,
                                s.jsx)("a", {
                                    className: "underline",
                                    target: "_blank",
                                    href: "https://defillama.com/protocol/solayer-usd#information",
                                    children: "https://defillama.com/protocol/solayer-usd#information"
                                })]
                            })]
                        }), (0,
                        s.jsxs)("section", {
                            id: "partners",
                            children: [(0,
                            s.jsx)(c, {
                                children: "// Ecosystem & partners"
                            }), (0,
                            s.jsx)(d, {
                                children: "Solayer has an expansive ecosystem starting first with delegation partners, including Sonic, Hashkey Cloud, BONK, and Altlayer. Additionally, Solayer has launched restaking-backed LSTs with Bitget and Phoenix Group for BGSOL and phxSOL. Solayer has also been the restaking partner of choice for major exchanges such as Binance and Bybit for the launch of Binance Staked SOL (BNSOL) and Bybit Staked SOL (bbSOL)."
                            }), (0,
                            s.jsx)(d, {
                                children: "Solayer has also partnered with major DeFi protocols on Solana such as Jupiter, with an integration of the delegation contract with Jupiter as a custom AMM. Solayer has also partnered with Orca, Kamino, Save (Solend), Raydium and Meteora for DeFi usage of sSOL and sUSD."
                            }), (0,
                            s.jsx)(d, {
                                children: "Finally, Solayer has also announced partnerships with major infrastructure leaders such as Chorus One, Luganodes, and Kraken. Solayer has also established price feeds with top oracles such as Pyth and Switchboard to support the usage of sSOL and sUSD across DeFi on Solana."
                            })]
                        }), (0,
                        s.jsxs)("section", {
                            id: "community-links",
                            children: [(0,
                            s.jsx)(c, {
                                children: "// Community links"
                            }), (0,
                            s.jsxs)(d, {
                                children: ["X:", " ", (0,
                                s.jsx)("a", {
                                    className: "underline text-[#012E25]",
                                    target: "_blank",
                                    href: "https://x.com/solayer_labs",
                                    children: "https://x.com/solayer_labs"
                                })]
                            }), (0,
                            s.jsxs)(d, {
                                children: ["Discord:", " ", (0,
                                s.jsx)("a", {
                                    className: "underline text-[#012E25]",
                                    target: "_blank",
                                    href: "https://discord.com/invite/solayerlabs",
                                    children: "https://discord.com/invite/solayerlabs"
                                })]
                            })]
                        })]
                    })
                })]
            })
        }
    }
    ,
    94396: (e, t, a) => {
        "use strict";
        a.d(t, {
            default: () => p
        });
        var s = a(59386)
          , n = a(71946)
          , i = a(95186)
          , r = a(1465);
        let l = i.forwardRef( (e, t) => {
            let {className: a, ...n} = e;
            return (0,
            s.jsx)("div", {
                ref: t,
                className: (0,
                r.cn)("rounded-xl border bg-card text-card-foreground shadow", a),
                ...n
            })
        }
        );
        l.displayName = "Card";
        let o = i.forwardRef( (e, t) => {
            let {className: a, ...n} = e;
            return (0,
            s.jsx)("div", {
                ref: t,
                className: (0,
                r.cn)("flex flex-col space-y-1.5 p-6", a),
                ...n
            })
        }
        );
        o.displayName = "CardHeader";
        let c = i.forwardRef( (e, t) => {
            let {className: a, ...n} = e;
            return (0,
            s.jsx)("div", {
                ref: t,
                className: (0,
                r.cn)("font-semibold leading-none tracking-tight", a),
                ...n
            })
        }
        );
        c.displayName = "CardTitle",
        i.forwardRef( (e, t) => {
            let {className: a, ...n} = e;
            return (0,
            s.jsx)("div", {
                ref: t,
                className: (0,
                r.cn)("text-sm text-muted-foreground", a),
                ...n
            })
        }
        ).displayName = "CardDescription";
        let d = i.forwardRef( (e, t) => {
            let {className: a, ...n} = e;
            return (0,
            s.jsx)("div", {
                ref: t,
                className: (0,
                r.cn)("p-6 pt-0", a),
                ...n
            })
        }
        );
        d.displayName = "CardContent",
        i.forwardRef( (e, t) => {
            let {className: a, ...n} = e;
            return (0,
            s.jsx)("div", {
                ref: t,
                className: (0,
                r.cn)("flex items-center p-6 pt-0", a),
                ...n
            })
        }
        ).displayName = "CardFooter";
        var h = a(3081)
          , u = a(29795);
        let m = (0,
        i.memo)(e => {
            let {children: t} = e;
            return (0,
            s.jsx)(l, {
                className: "bg-[#0A0A0A] border-[#084d3e] border-2 text-white rounded-none",
                children: t
            })
        }
        );
        function p() {
            let e = (0,
            h.useRouter)()
              , t = (0,
            i.useCallback)(t => {
                e.push(t)
            }
            , []);
            return (0,
            s.jsx)("div", {
                className: "w-full p-4 md:p-8 space-y-4 bg-black ",
                children: (0,
                s.jsx)("div", {
                    className: "max-w-[100%] md:max-w-3xl w-full mx-auto grid gap-4",
                    children: (0,
                    s.jsxs)(m, {
                        children: [(0,
                        s.jsxs)(o, {
                            className: "flex flex-row items-center justify-between",
                            children: [(0,
                            s.jsx)(c, {
                                className: "text-2xl md:text-3xl font-normal",
                                children: "Community Sale"
                            }), (0,
                            s.jsx)(n.$, {
                                variant: "outline",
                                className: "bg-white text-black hover:bg-gray-100",
                                onClick: () => t("/solayer/sale"),
                                children: "Participate now"
                            })]
                        }), (0,
                        s.jsxs)(d, {
                            className: "space-y-2",
                            children: [(0,
                            s.jsxs)("div", {
                                className: "flex justify-between items-center",
                                children: [(0,
                                s.jsx)("span", {
                                    className: "text-gray-400",
                                    children: "Total allocation"
                                }), (0,
                                s.jsx)("span", {
                                    className: "text-white",
                                    children: u.QP
                                })]
                            }), (0,
                            s.jsxs)("div", {
                                className: "flex justify-between items-center",
                                children: [(0,
                                s.jsx)("span", {
                                    className: "text-gray-400",
                                    children: "Fully Diluted Valuation "
                                }), (0,
                                s.jsx)("span", {
                                    className: "text-white",
                                    children: "$35 M"
                                })]
                            }), (0,
                            s.jsxs)("div", {
                                className: "flex justify-between items-center",
                                children: [(0,
                                s.jsx)("span", {
                                    className: "text-gray-400",
                                    children: "Start date"
                                }), (0,
                                s.jsx)("span", {
                                    className: "text-white",
                                    children: u.UP
                                })]
                            })]
                        })]
                    })
                })
            })
        }
    }
}, e => {
    var t = t => e(e.s = t);
    e.O(0, [763, 636, 705, 436, 357, 372, 292, 447, 560, 119, 410, 778, 896, 195, 358], () => t(81221)),
    _N_E = e.O()
}
]);
