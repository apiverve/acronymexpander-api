using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace APIVerve
{
    /// <summary>
    /// Expansions data
    /// </summary>
    public class Expansions
    {
        [JsonProperty("expansion")]
        public string Expansion { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("category")]
        public string Category { get; set; }

    }
    /// <summary>
    /// Mostcommon data
    /// </summary>
    public class Mostcommon
    {
        [JsonProperty("expansion")]
        public string Expansion { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("category")]
        public string Category { get; set; }

    }
    /// <summary>
    /// Data data
    /// </summary>
    public class Data
    {
        [JsonProperty("acronym")]
        public string Acronym { get; set; }

        [JsonProperty("expansions")]
        public Expansions[] Expansions { get; set; }

        [JsonProperty("most_common")]
        public Mostcommon Mostcommon { get; set; }

        [JsonProperty("source")]
        public string Source { get; set; }

        [JsonProperty("context_provided")]
        public string Contextprovided { get; set; }

    }
    /// <summary>
    /// API Response object
    /// </summary>
    public class ResponseObj
    {
        [JsonProperty("status")]
        public string Status { get; set; }

        [JsonProperty("error")]
        public object Error { get; set; }

        [JsonProperty("data")]
        public Data Data { get; set; }

    }
}
