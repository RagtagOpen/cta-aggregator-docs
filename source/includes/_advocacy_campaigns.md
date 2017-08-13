# Advocacy Campaigns

An Advocacy Campaign resource is a top-level resource that represents a call to action that involves reaching out by phone or eamil.
It contains the following attributes.

Name    | Type | Description
--------- |  ----------- |  -----------
identifiers | array | A unique string array of identifiers in the format [system name]:[id]. See the general concepts document for more information about identifiers.
created_at | datetime | A read-only property representing the date and time the resource was created on the local system.
updated_at | datetime |A read-only property representing the date and time the resource was last modified on the local system.
origin_system | string | A human readable identifier of the system where this advocacy campaign was created. (ex: “OSDI System”)
title | string | The title of the advocacy campaign. Intended for public display rather than administrative purposes.
description | string |A description of the advocacy campaign, usually displayed publicly. May contain text and/or HTML.
template | string | A script to read over the phone, or a general template for a postcard or email. These may be captured in the description, but putting it in the templates field allows it to be highlighted by clients. May contain text and/or HTML.  browser_url | string | A URL string pointing to the publicly available advocacy campaign page on the web.
featured_image_url | string | A URL string pointing to a publicly available featured image file for this advocacy campaign on the web.
action_type | string | The type of advocacy campaign, specifying how users perform outreaches to targets. Either "email" or "phone."
target_list | string | An array of target object hashes representing the targets of the advocacy campaign.

For more information on OSDI's Advocacy Campaign resource, follow this link: [https://opensupporter.github.io/osdi-docs/advocacy_campaigns.html](https://opensupporter.github.io/osdi-docs/advocacy_campaigns.html).
## Get All Advocacy Campaigns

```shell
curl -X GET "http://localhost:3000/v1/advocacy_campaigns"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "3c29ff31-d859-42fd-a786-c69306eadb86",
            "type": "advocacy_campaigns",
            "links": {
                "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86"
            },
            "attributes": {
                "title": "Express Outrage at Open White Supremacy Rally in Charlottesville",
                "description": "Update (8/12): The 'Unite The Right' rally has turned violent after a car intentionally drove into a group of counter-protestors, leaving one dead and 19 others injured. We must stand up against this violence and hate.\n\nOn August 11th in Charlottesville, Virginia, a group of white protesters (mostly men) marched through the University of Virginia campus carrying torches and chanting “White Lives Matter” and “Jews Will Not Replace Us.\" As disturbing as this modern day KKK rally was, it was only a preview of the next day’s larger event in Emancipation Park: the \"Unite the Right” rally and march. No longer expecting consequences, these extremists did not bother to conceal their faces behind white hoods as in years past. Instead, they proudly raised their hands in Nazi salutes and used other anti-LGBT, anti-black, anti-Muslim chants and symbols. Attended by openly racist leaders like David Duke and Richard Spencer, there were multiple skirmishes between those carrying Nazi and Confederate flags and those counter protestings. Millions around the nation and world watch as American society is pummeled yet again by the destructive forces of hate.\n\nAlthough speech of all kinds is protected by the 1st Amendment, that protection does not require silence on the part of those who disagree. The American people need and deserve leadership that affirms the values of acceptance and inclusion that our country was founded upon and that we have struggled to extend to all people over the past 240+ years. The American people deserve leaders that stand up to hate and promote unity at a time when our President employs multiple openly racist advisors like Sebastian Gorka, Steven Miller, Steven Bannon, and appointed Jeff Sessions as Attorney General. Both the Governor of Virginia and Mayor of Charlottesville were quick to denounce these gatherings, as were some other members of Congress, but Trump only tweeted 3 vague and generic sentences about unspecified \"hate.\" All elected officials in our government must join what should be a deafening chorus of denunciation against this kind of racist and hate-fueled speech.",
                "browser_url": null,
                "origin_system": "5Calls",
                "featured_image_url": null,
                "action_type": "phone",
                "template": "Hi, my name is [NAME] and I’m a constituent from [CITY, ZIP].\n\nI'm calling to express my outrage about the ugly demonstrations in Charlottesville. I demand that [REP/SEN NAME] join [his/her] colleagues on both sides of the aisle in denouncing the 'Unite the Right' white supremacist rally in Charlottesville. Protecting free speech does not equate to silence on matters of racism, hate, and violence.\n\nThank you for your time and attention.\n\n[IF LEAVING A VOICEMAIL: please leave your full street address to ensure your call is tallied]",
                "target_list": [],
                "identifiers": [
                    "5Calls:reco1LA9EU4aQeoLu",
                    "cta-aggregator:3c29ff31-d859-42fd-a786-c69306eadb86"
                ]
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/relationships/user",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/user"
                    }
                },
                "targets": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/relationships/targets",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/targets"
                    }
                },
                "target_list": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/relationships/target_list",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/target_list"
                    }
                }
            }
        },
        {
            "id": "8cd8e9ac-f684-4cdf-8e67-60c40e386eff",
            "type": "advocacy_campaigns",
            "links": {
                "self": "http://localhost:3000/v1/advocacy_campaigns/8cd8e9ac-f684-4cdf-8e67-60c40e386eff"
            },
            "attributes": {
                "title": " Demand the Removal of Bannon, Gorka, and Miller from the White House",
                "description": "The tragic events in Charlottesville on Saturday, August 12th rocked the United States to the core. As famed racist David Duke proclaimed that the purpose of the event was to “fulfill the promises of Donald Trump” and to “take our country back,\" white supremacists and neo-Nazis rallied and attacked counter protesters. James Alex Fields is now charged with 2nd-degree murder for ramming his car into a group of protesters, killing Heather Heyer, a 32 year old anti-racist protester.  \n\nIn times of hatred-fueled turmoil, Americans should be able to depend on the President to reaffirm American values of justice, fairness, and equality for all. Instead, after hours of silence, Donald Trump falsely equated white supremacists carrying Confederate and Nazi flags while chanting \"Heil Trump\" with the counter protesters defending civil rights. Although the White House has issued a clarification that their denunciation “includes white supremacists, KKK and all extremist groups”, this too little, too late, and still too weak approach leaves Americans wondering if their President actually supported these actions.\n\nThis massive failure of leadership should not come as a surprise to anyone since Donald Trump has at least 3 White House advisors who support white supremacist ideologies: Steven Bannon, Sebastian Gorka, and Steven Miller. Each man has a history of either promoting their own racist views or amplifying the views of other extremists.\n\nThe White House needs to cut ties to these three divisive figures to show the nation and the world that the President does not endorse racism, white supremacy, the KKK or Nazism. It is now time for Congress to call for their resignation so we can begin to heal from the damage that has been done.",
                "browser_url": null,
                "origin_system": "5Calls",
                "featured_image_url": null,
                "action_type": "phone",
                "template": "Hi, my name is [NAME] and I’m a constituent from [CITY, ZIP].\n\nI'm calling to demand that [REP/SEN NAME] call for the resignation of Steve Bannon, Sebastian Gorka and Stephen Miller. These three men have histories of extremist ideologies and should not be working in the White House. The American people deserve a Presidential administration that has no ties to racism, the KKK, white supremacy, or Nazis.\n\nThank you for your time and attention.\n\n[IF LEAVING A VOICEMAIL: please leave your full street address to ensure your call is tallied]",
                "target_list": [],
                "identifiers": [
                    "5Calls:recBJObrOidVQMIoY",
                    "cta-aggregator:8cd8e9ac-f684-4cdf-8e67-60c40e386eff"
                ]
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/8cd8e9ac-f684-4cdf-8e67-60c40e386eff/relationships/user",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/8cd8e9ac-f684-4cdf-8e67-60c40e386eff/user"
                    }
                },
                "targets": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/8cd8e9ac-f684-4cdf-8e67-60c40e386eff/relationships/targets",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/8cd8e9ac-f684-4cdf-8e67-60c40e386eff/targets"
                    }
                },
                "target_list": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/8cd8e9ac-f684-4cdf-8e67-60c40e386eff/relationships/target_list",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/8cd8e9ac-f684-4cdf-8e67-60c40e386eff/target_list"
                    }
                }
            }
        },
        {
            "id": "e895f3c4-d4f4-47fe-aeaa-1f4745287d04",
            "type": "advocacy_campaigns",
            "links": {
                "self": "http://localhost:3000/v1/advocacy_campaigns/e895f3c4-d4f4-47fe-aeaa-1f4745287d04"
            },
            "attributes": {
                "title": "Prevent Military Action Against North Korea",
                "description": "The escalating tensions with North Korea have taken a sudden and dangerous turn, with the Washington Post reporting the isolated country has successfully produced a miniaturized nuclear warhead that will fit inside a ballistic missile. Trump responded to the report with alarming rhetoric, stating North Korea will be “met with fire and fury” if they were to make any threats against the United States. Not surprisingly, a few short hours later North Korea responded with threats of missile strikes on Guam, a U.S. territory in the Western Pacific Ocean.\n\nBombs and attacks are not always the answer to global crises, and we must not stumble into another nuclear war and risk innocent lives in the process. The president has yet to explore diplomacy and non-military options, and instead has only made threats of force and aggression. As a co-equal branch of government and an important check on the President's power, Congress must be consulted before any further actions take place that endanger the lives of Americans. \n\nTrump should follow the same procedure as all other US Presidents and seek the approval of Congress before any military action takes place in North Korea, or any other location in the world.",
                "browser_url": null,
                "origin_system": "5Calls",
                "featured_image_url": null,
                "action_type": "phone",
                "template": "Hi, my name is [NAME] and I'm a constituent from [CITY, ZIP]. \n\nI'm calling to urge [SENATOR/REP NAME] to demand congressional approval before any military engagement takes place in North Korea and to vote against any request to do so. We cannot and should not stumble into another unnecessary war. Thank you for your time and attention. \n\n[IF LEAVING A VOICEMAIL: please leave your full street address to ensure your call is tallied]",
                "target_list": [],
                "identifiers": [
                    "5Calls:recP3XRP4IFDvaCgF",
                    "cta-aggregator:e895f3c4-d4f4-47fe-aeaa-1f4745287d04"
                ]
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/e895f3c4-d4f4-47fe-aeaa-1f4745287d04/relationships/user",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/e895f3c4-d4f4-47fe-aeaa-1f4745287d04/user"
                    }
                },
                "targets": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/e895f3c4-d4f4-47fe-aeaa-1f4745287d04/relationships/targets",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/e895f3c4-d4f4-47fe-aeaa-1f4745287d04/targets"
                    }
                },
                "target_list": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/e895f3c4-d4f4-47fe-aeaa-1f4745287d04/relationships/target_list",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/e895f3c4-d4f4-47fe-aeaa-1f4745287d04/target_list"
                    }
                }
            }
        },
        {
            "id": "8a09df4c-cc63-47f8-a723-9f9b2886e83c",
            "type": "advocacy_campaigns",
            "links": {
                "self": "http://localhost:3000/v1/advocacy_campaigns/8a09df4c-cc63-47f8-a723-9f9b2886e83c"
            },
            "attributes": {
                "title": "Support the College for All Act   ",
                "description": "Thanks to skyrocketing college tuition costs, student debt in the US amounts to $1.3 trillion. Eighty-three percent of all students attending US public universities graduate with debt, and some of them will remain in debt for their entire lives. \n\nA coalition of Representatives and Senators have introduced a bill to end the crushing burden of high college tuition. The College for All Act would provide free public university tuition for families earning up to $125,000 per year, covering about 80% of all US college students. The bill would also reduce student loan interest rates for new borrowers, allow existing borrowers to refinance at lower rates, and eliminate tuitions and fees at two-year community colleges. \n\nStudent loan debt prevents people from buying homes, starting families, saving for retirement, and working in lower-paying but crucial fields like social work and early childhood education. It is time to end the student debt crisis and make an affordable college education a reality for all.     ",
                "browser_url": null,
                "origin_system": "5Calls",
                "featured_image_url": null,
                "action_type": "phone",
                "template": "Hi, my name is [NAME] and I'm a constituent from [CITY, ZIP]. \n\n[IF COMMITTEE]: I'm calling to ask the committee to schedule a hearing for [HR 1880/S 806], the College for All Act. This important bill would alleviate the economic and social burden of student debt and give everyone access to an affordable college education.\n\n[IF REP/SEN]: I'm calling to ask [REP/SEN NAME] to support [HR 1880/S 806], the College for All Act. This important bill would alleviate the economic and social burden of student debt and give everyone access to an affordable college education.\n\nThank you for your time and attention.\n\n[IF LEAVING A VOICEMAIL: please leave your full street address to ensure your call is tallied]        ",
                "target_list": [
                    {
                        "id": "360cda45-6d93-42ae-a0fb-e1f6ebdba564",
                        "organization": "Senate Committee on Health",
                        "given_name": null,
                        "family_name": null,
                        "ocdid": null,
                        "postal_addresses": [],
                        "email_addresses": [],
                        "phone_numbers": [
                            {
                                "primary": true,
                                "number": "202-224-5375",
                                "number_type": "work"
                            }
                        ],
                        "created_at": "2017-08-13 03:33:12 UTC",
                        "updated_at": "2017-08-13 03:33:12 UTC",
                        "user_id": "b4d49003-a21f-4ecf-ab37-432dd1c83182",
                        "title": null
                    },
                    {
                        "id": "b92ff013-174d-4767-8892-645898cc5778",
                        "organization": "House Committee on Education and the Workforce",
                        "given_name": null,
                        "family_name": null,
                        "ocdid": null,
                        "postal_addresses": [],
                        "email_addresses": [],
                        "phone_numbers": [
                            {
                                "primary": true,
                                "number": "202-225-4527",
                                "number_type": "work"
                            }
                        ],
                        "created_at": "2017-08-13 03:33:12 UTC",
                        "updated_at": "2017-08-13 03:33:12 UTC",
                        "user_id": "b4d49003-a21f-4ecf-ab37-432dd1c83182",
                        "title": null
                    }
                ],
                "identifiers": [
                    "5Calls:reclk123ddZOOdyp1",
                    "cta-aggregator:8a09df4c-cc63-47f8-a723-9f9b2886e83c"
                ]
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/8a09df4c-cc63-47f8-a723-9f9b2886e83c/relationships/user",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/8a09df4c-cc63-47f8-a723-9f9b2886e83c/user"
                    }
                },
                "targets": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/8a09df4c-cc63-47f8-a723-9f9b2886e83c/relationships/targets",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/8a09df4c-cc63-47f8-a723-9f9b2886e83c/targets"
                    }
                },
                "target_list": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/8a09df4c-cc63-47f8-a723-9f9b2886e83c/relationships/target_list",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/8a09df4c-cc63-47f8-a723-9f9b2886e83c/target_list"
                    }
                }
            }
        },
        {
            "id": "884ebdeb-5980-465e-bfd5-c0011240230d",
            "type": "advocacy_campaigns",
            "links": {
                "self": "http://localhost:3000/v1/advocacy_campaigns/884ebdeb-5980-465e-bfd5-c0011240230d"
            },
            "attributes": {
                "title": "Protect Voting Rights with 2020 Census Funding",
                "description": "The information gathered during the 2020 Census will be used to inform state redistricting efforts, allocate seats within the House of Representatives, and provide demographic information to inform policy decisions at all levels of government. However, the House and Senate Appropriations Committees have not provided sufficient funds to adequately prepare for the 2020 Census. \n\nAn accurate census count is essential to ensure traditionally under-counted groups, like Latinx, Black, low-income, and non-English-speaking households, are adequately documented. The Census Bureau reported missing 2.1% of Black Americans and 1.5% of Latinx Americans in its 2010 count, while overcounting non-Latinx White Americans by 0.84%. Without robust and accurate data, the 2020 Census could be used to weaken the voting power of voters of color via partisan gerrymandering and systematically under-fund jurisdictions with larger proportions of non-White residents.\n\nA well-supported and well-funded 2020 Census is critical to the integrity of our democracy. The 2018 Commerce, Justice, and Science Appropriations bills (H.R.3267 / S.1662) have passed both House and Senate Committees with insufficient funding levels for the Census Bureau (about $300 million below requested amount). They now go to the full chambers for further debate and votes.",
                "browser_url": null,
                "origin_system": "5Calls",
                "featured_image_url": null,
                "action_type": "phone",
                "template": "Hi, my name is [NAME] and I’m a constituent from [CITY, ZIP].\n\nI’m calling today because I’m very concerned about the lack of adequate funding for the 2020 Census Bureau. I ask that [REP/SEN NAME] work to pass a 2018 spending bill that gives the bureau its requested funding levels so that it can ensure a fair and accurate 2020 Census.\n\nThank you for your time and attention.\n\n[IF LEAVING A VOICEMAIL: please leave your full street address to ensure your call is tallied]",
                "target_list": [],
                "identifiers": [
                    "5Calls:recDcn4wSNH9gBaBR",
                    "cta-aggregator:884ebdeb-5980-465e-bfd5-c0011240230d"
                ]
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/884ebdeb-5980-465e-bfd5-c0011240230d/relationships/user",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/884ebdeb-5980-465e-bfd5-c0011240230d/user"
                    }
                },
                "targets": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/884ebdeb-5980-465e-bfd5-c0011240230d/relationships/targets",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/884ebdeb-5980-465e-bfd5-c0011240230d/targets"
                    }
                },
                "target_list": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/884ebdeb-5980-465e-bfd5-c0011240230d/relationships/target_list",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/884ebdeb-5980-465e-bfd5-c0011240230d/target_list"
                    }
                }
            }
        },
        {
            "id": "6722e7a2-79e2-483e-b210-6a2ed68a79a1",
            "type": "advocacy_campaigns",
            "links": {
                "self": "http://localhost:3000/v1/advocacy_campaigns/6722e7a2-79e2-483e-b210-6a2ed68a79a1"
            },
            "attributes": {
                "title": "Oppose the RAISE Act's Attack on Legal Immigration",
                "description": "The RAISE Act, legislation to reduce the amount of legal immigration in the US by switching to a \"merit-based\" system, was introduced by Senators Tom Cotton (R-AR) and David Perdue (R-GA) in February of 2017, but failed to receive much support from other Republicans due to the bill's extreme nature. Republican Senators John McCain, Lindsey Graham, and Tim Scott have already voiced concerns with the RAISE Act. However, Trump threw his weight behind the bill with a press event on August 2nd, when he expressed support for the drastic reduction in legal immigration the RAISE Act would bring (50% by 2027).\n\nThe claimed purpose of the RAISE Act is the reduce the flow of low-skilled legal immigrants by favoring applicants based on skills, education, and ability to speak English, in order to increase wages for American workers. However, economists have debunked this idea: in reality, immigrants help the economy grow, creating higher-skilled, higher-paying jobs for native-born Americans. The Cato Institute, a libertarian think tank, studied the RAISE Act and concluded that its enactment would case a *reduction* in wages across all skill levels. In addition to its adverse economic affects, the bill would also cap refugee admissions, eliminate the diversity visa program, and tear families apart with drastic cuts to visas for immigrant family members.\n\nThe White House's endorsement of the RAISE Act serves as a way to ignite the anti-immigration voters in Trump's base, and is an attempt by Senators Cotton and Perdue to gain more momentum to pass their bill. With a myriad of other priorities backlogged in the Senate - tax cuts, the 2018 budget, the debt ceiling - the RAISE Act has a lot of heavy lifting to do in order to pass the chamber. ",
                "browser_url": null,
                "origin_system": "5Calls",
                "featured_image_url": null,
                "action_type": "phone",
                "template": "Hi, my name is [NAME] and I’m a constituent from [CITY, ZIP].\n\nI'm calling to urge [REP/SEN NAME] to oppose S.354, the RAISE Act. This bill's drastic reduction to legal immigration goes against not only our country's values, but our economy as well.\n\nThank you for your time and attention.\n\n[IF LEAVING A VOICEMAIL: please leave your full street address to ensure your call is tallied]",
                "target_list": [],
                "identifiers": [
                    "5Calls:recAgtK5jJM2nsgCO",
                    "cta-aggregator:6722e7a2-79e2-483e-b210-6a2ed68a79a1"
                ]
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/6722e7a2-79e2-483e-b210-6a2ed68a79a1/relationships/user",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/6722e7a2-79e2-483e-b210-6a2ed68a79a1/user"
                    }
                },
                "targets": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/6722e7a2-79e2-483e-b210-6a2ed68a79a1/relationships/targets",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/6722e7a2-79e2-483e-b210-6a2ed68a79a1/targets"
                    }
                },
                "target_list": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/6722e7a2-79e2-483e-b210-6a2ed68a79a1/relationships/target_list",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/6722e7a2-79e2-483e-b210-6a2ed68a79a1/target_list"
                    }
                }
            }
        },
        {
            "id": "32cd480a-0d71-446f-a4d1-3ebcb1cdbf30",
            "type": "advocacy_campaigns",
            "links": {
                "self": "http://localhost:3000/v1/advocacy_campaigns/32cd480a-0d71-446f-a4d1-3ebcb1cdbf30"
            },
            "attributes": {
                "title": "Demand Fair Tax Reform ",
                "description": "After losing their first major legislative battle and failing to repeal the ACA, Congressional Republicans are now shifting focus to tax reform. However, tax \"reform\" may not be an accurate description, as the majority of what has been discussed so far consists of tax cuts to corporations and the wealthiest Americans, and little to no benefits for the middle and working classes. \n\nThe Republican tax plan would cut the corporate tax rate from 35% to 15% and eliminate the alternative minimum tax (AMT), changes that would disproportionately benefit wealthy Americans and allow them to exploit tax code loopholes. Trump's 2005 tax return revealed that without the AMT, he would have paid a tax rate of only 3.5%. The Republican tax plan also proposes to eliminate the estate tax, a tax that only applies to the wealthiest 0.2% of American families, such as the Trump family. \n\nSince Republicans plan to use the budget reconciliation process to push a partisan tax bill through Congress, the bill is not allowed to add to the federal deficit. This means that the new tax cuts for corporations or the wealthy will be budget-neutralized by cutting spending on programs that benefit working class families, such as Medicaid, Medicare, and Social Security. Minority Leader Chuck Schumer (D-NY) sent a letter signed by nearly all members of the Democratic caucus to Majority Leader Mitch McConnell (R-KY), stating that the Democrats are willing to work with Republicans on a tax plan that does not cut taxes for the top 1% or cut spending on vital social safety net programs. Our representatives in Congress must work together towards federal tax reforms that will treat all Americans fairly.",
                "browser_url": null,
                "origin_system": "5Calls",
                "featured_image_url": null,
                "action_type": "phone",
                "template": "Hi, my name is [NAME] and I’m a constituent from [CITY, ZIP].\n\nI'm calling because I am opposed to any partisan tax plan that cuts taxes for corporations and the wealthy at the expense of Medicare, Social Security, and other social programs that working-class Americans depend on. I expect [REP/SEN NAME] to work towards fair tax reform by following regular order, through committee hearings and bipartisan contributions.\n\nThank you for your time and attention.\n\n[IF LEAVING A VOICEMAIL: please leave your full street address to ensure your call is tallied]",
                "target_list": [],
                "identifiers": [
                    "5Calls:recBPOngPfTX1kVFU",
                    "cta-aggregator:32cd480a-0d71-446f-a4d1-3ebcb1cdbf30"
                ]
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/32cd480a-0d71-446f-a4d1-3ebcb1cdbf30/relationships/user",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/32cd480a-0d71-446f-a4d1-3ebcb1cdbf30/user"
                    }
                },
                "targets": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/32cd480a-0d71-446f-a4d1-3ebcb1cdbf30/relationships/targets",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/32cd480a-0d71-446f-a4d1-3ebcb1cdbf30/targets"
                    }
                },
                "target_list": {
                    "links": {
                        "self": "http://localhost:3000/v1/advocacy_campaigns/32cd480a-0d71-446f-a4d1-3ebcb1cdbf30/relationships/target_list",
                        "related": "http://localhost:3000/v1/advocacy_campaigns/32cd480a-0d71-446f-a4d1-3ebcb1cdbf30/target_list"
                    }
                }
            }
        }
    ],
    "links": {
        "first": "http://localhost:3000/v1/advocacy_campaigns?page%5Bnumber%5D=1&page%5Bsize%5D=10",
        "next": "http://localhost:3000/v1/advocacy_campaigns?page%5Bnumber%5D=2&page%5Bsize%5D=10",
        "last": "http://localhost:3000/v1/advocacy_campaigns?page%5Bnumber%5D=2&page%5Bsize%5D=10"
    }
}
```

This endpoint retrieves all advocacy campaigns.

### HTTP Request

`GET http://localhost:3000/v1/advocacy_campaigns`

### Filter

You can filter based on the following attribteus

Filter 		| Values | Description|  Example
--------- |  ----------- |  ----------- |  -----------
action_type | email, phone | action type for advocacy campaign  | http://localhost:3000/v1/advocacy_campaigns?filter[advocacy_campaign_type]=phone



## Get a Specific Advocacy Campaign


```shell
curl -X GET  "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "3c29ff31-d859-42fd-a786-c69306eadb86",
        "type": "advocacy_campaigns",
        "links": {
            "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86"
        },
        "attributes": {
            "title": "Express Outrage at Open White Supremacy Rally in Charlottesville",
            "description": "Update (8/12): The 'Unite The Right' rally has turned violent after a car intentionally drove into a group of counter-protestors, leaving one dead and 19 others injured. We must stand up against this violence and hate.\n\nOn August 11th in Charlottesville, Virginia, a group of white protesters (mostly men) marched through the University of Virginia campus carrying torches and chanting “White Lives Matter” and “Jews Will Not Replace Us.\" As disturbing as this modern day KKK rally was, it was only a preview of the next day’s larger event in Emancipation Park: the \"Unite the Right” rally and march. No longer expecting consequences, these extremists did not bother to conceal their faces behind white hoods as in years past. Instead, they proudly raised their hands in Nazi salutes and used other anti-LGBT, anti-black, anti-Muslim chants and symbols. Attended by openly racist leaders like David Duke and Richard Spencer, there were multiple skirmishes between those carrying Nazi and Confederate flags and those counter protestings. Millions around the nation and world watch as American society is pummeled yet again by the destructive forces of hate.\n\nAlthough speech of all kinds is protected by the 1st Amendment, that protection does not require silence on the part of those who disagree. The American people need and deserve leadership that affirms the values of acceptance and inclusion that our country was founded upon and that we have struggled to extend to all people over the past 240+ years. The American people deserve leaders that stand up to hate and promote unity at a time when our President employs multiple openly racist advisors like Sebastian Gorka, Steven Miller, Steven Bannon, and appointed Jeff Sessions as Attorney General. Both the Governor of Virginia and Mayor of Charlottesville were quick to denounce these gatherings, as were some other members of Congress, but Trump only tweeted 3 vague and generic sentences about unspecified \"hate.\" All elected officials in our government must join what should be a deafening chorus of denunciation against this kind of racist and hate-fueled speech.",
            "browser_url": null,
            "origin_system": "5Calls",
            "featured_image_url": null,
            "action_type": "phone",
            "template": "Hi, my name is [NAME] and I’m a constituent from [CITY, ZIP].\n\nI'm calling to express my outrage about the ugly demonstrations in Charlottesville. I demand that [REP/SEN NAME] join [his/her] colleagues on both sides of the aisle in denouncing the 'Unite the Right' white supremacist rally in Charlottesville. Protecting free speech does not equate to silence on matters of racism, hate, and violence.\n\nThank you for your time and attention.\n\n[IF LEAVING A VOICEMAIL: please leave your full street address to ensure your call is tallied]",
            "target_list": [],
            "identifiers": [
                "5Calls:reco1LA9EU4aQeoLu",
                "cta-aggregator:3c29ff31-d859-42fd-a786-c69306eadb86"
            ]
        },
        "relationships": {
            "user": {
                "links": {
                    "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/relationships/user",
                    "related": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/user"
                }
            },
            "targets": {
                "links": {
                    "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/relationships/targets",
                    "related": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/targets"
                }
            },
            "target_list": {
                "links": {
                    "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/relationships/target_list",
                    "related": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/target_list"
                }
            }
        }
    }
}
```

### HTTP Request

`GET "http://localhost:3000/v1/advocacy_campaigns/<UUID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the advocay campaign to retrieve


## Create an Advocacy Campaign

```shell
curl -X POST "http://localhost:3000/v1/advocacy_campaigns"
  -H "Content-Type: application/vnd.api+json" 
  -H "Accept: application/vnd.api+json" 
  -d ' {
    "data": {
      "type": "advocacy_campaigns",
        "attributes": {
          "title": "Express Outrage at Open White Supremacy Rally in Charlottesville",
          "description": "Update (8/12): The 'Unite The Right' rally has turned violent after a car intentionally drove into a group of counter-protestors, leaving one dead and 19 others injured. We must stand up against this violence and hate.\n\nOn August 11th in Charlottesville, Virginia, a group of white protesters (mostly men) marched through the University of Virginia campus carrying torches and chanting “White Lives Matter” and “Jews Will Not Replace Us.\" As disturbing as this modern day KKK rally was, it was only a preview of the next day’s larger event in Emancipation Park: the \"Unite the Right” rally and march. No longer expecting consequences, these extremists did not bother to conceal their faces behind white hoods as in years past. Instead, they proudly raised their hands in Nazi salutes and used other anti-LGBT, anti-black, anti-Muslim chants and symbols. Attended by openly racist leaders like David Duke and Richard Spencer, there were multiple skirmishes between those carrying Nazi and Confederate flags and those counter protestings. Millions around the nation and world watch as American society is pummeled yet again by the destructive forces of hate.\n\nAlthough speech of all kinds is protected by the 1st Amendment, that protection does not require silence on the part of those who disagree. The American people need and deserve leadership that affirms the values of acceptance and inclusion that our country was founded upon and that we have struggled to extend to all people over the past 240+ years. The American people deserve leaders that stand up to hate and promote unity at a time when our President employs multiple openly racist advisors like Sebastian Gorka, Steven Miller, Steven Bannon, and appointed Jeff Sessions as Attorney General. Both the Governor of Virginia and Mayor of Charlottesville were quick to denounce these gatherings, as were some other members of Congress, but Trump only tweeted 3 vague and generic sentences about unspecified \"hate.\" All elected officials in our government must join what should be a deafening chorus of denunciation against this kind of racist and hate-fueled speech.",
          "browser_url": null,
          "origin_system": "5Calls",
          "featured_image_url": null,
          "action_type": "phone",
          "template": "Hi, my name is [NAME] and I’m a constituent from [CITY, ZIP].\n\nI'm calling to express my outrage about the ugly demonstrations in Charlottesville. I demand that [REP/SEN NAME] join [his/her] colleagues on both sides of the aisle in denouncing the 'Unite the Right' white supremacist rally in Charlottesville. Protecting free speech does not equate to silence on matters of racism, hate, and violence.\n\nThank you for your time and attention.\n\n[IF LEAVING A VOICEMAIL: please leave your full street address to ensure your call is tallied]",
          "target_list": [],
          "identifiers": [
            "5Calls:reco1LA9EU4aQeoLu",
          "cta-aggregator:3c29ff31-d859-42fd-a786-c69306eadb86"
          ]
        },
        "relationships": {
          "targets": {
            "data": [
            {
              "type": "targets",
              "id": "3c29ff31-d859-42fd-a786-c69306eadb86"
            }
          ]
        }
      }
    }
  } '
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "3c29ff31-d859-42fd-a786-c69306eadb86",
        "type": "advocacy_campaigns",
        "links": {
            "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86"
        },
        "attributes": {
            "title": "Express Outrage at Open White Supremacy Rally in Charlottesville",
            "description": "Update (8/12): The 'Unite The Right' rally has turned violent after a car intentionally drove into a group of counter-protestors, leaving one dead and 19 others injured. We must stand up against this violence and hate.\n\nOn August 11th in Charlottesville, Virginia, a group of white protesters (mostly men) marched through the University of Virginia campus carrying torches and chanting “White Lives Matter” and “Jews Will Not Replace Us.\" As disturbing as this modern day KKK rally was, it was only a preview of the next day’s larger event in Emancipation Park: the \"Unite the Right” rally and march. No longer expecting consequences, these extremists did not bother to conceal their faces behind white hoods as in years past. Instead, they proudly raised their hands in Nazi salutes and used other anti-LGBT, anti-black, anti-Muslim chants and symbols. Attended by openly racist leaders like David Duke and Richard Spencer, there were multiple skirmishes between those carrying Nazi and Confederate flags and those counter protestings. Millions around the nation and world watch as American society is pummeled yet again by the destructive forces of hate.\n\nAlthough speech of all kinds is protected by the 1st Amendment, that protection does not require silence on the part of those who disagree. The American people need and deserve leadership that affirms the values of acceptance and inclusion that our country was founded upon and that we have struggled to extend to all people over the past 240+ years. The American people deserve leaders that stand up to hate and promote unity at a time when our President employs multiple openly racist advisors like Sebastian Gorka, Steven Miller, Steven Bannon, and appointed Jeff Sessions as Attorney General. Both the Governor of Virginia and Mayor of Charlottesville were quick to denounce these gatherings, as were some other members of Congress, but Trump only tweeted 3 vague and generic sentences about unspecified \"hate.\" All elected officials in our government must join what should be a deafening chorus of denunciation against this kind of racist and hate-fueled speech.",
            "browser_url": null,
            "origin_system": "5Calls",
            "featured_image_url": null,
            "action_type": "phone",
            "template": "Hi, my name is [NAME] and I’m a constituent from [CITY, ZIP].\n\nI'm calling to express my outrage about the ugly demonstrations in Charlottesville. I demand that [REP/SEN NAME] join [his/her] colleagues on both sides of the aisle in denouncing the 'Unite the Right' white supremacist rally in Charlottesville. Protecting free speech does not equate to silence on matters of racism, hate, and violence.\n\nThank you for your time and attention.\n\n[IF LEAVING A VOICEMAIL: please leave your full street address to ensure your call is tallied]",
            "target_list": [],
            "identifiers": [
                "5Calls:reco1LA9EU4aQeoLu",
                "cta-aggregator:3c29ff31-d859-42fd-a786-c69306eadb86"
            ]
        },
        "relationships": {
            "user": {
                "links": {
                    "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/relationships/user",
                    "related": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/user"
                }
            },
            "targets": {
                "links": {
                    "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/relationships/targets",
                    "related": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/targets"
                }
            },
            "target_list": {
                "links": {
                    "self": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/relationships/target_list",
                    "related": "http://localhost:3000/v1/advocacy_campaigns/3c29ff31-d859-42fd-a786-c69306eadb86/target_list"
                }
            }
        }
    }
}
```

This endpoint creates a new advocacy campaign.

### HTTP Request

`POST "http://localhost:3000/v1/advocacy_campaigns/"`


