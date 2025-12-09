declare module '@apiverve/acronymexpander' {
  export interface acronymexpanderOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface acronymexpanderResponse {
    status: string;
    error: string | null;
    data: AcronymExpanderData;
    code?: number;
  }


  interface AcronymExpanderData {
      acronym:         string;
      expansions:      MostCommon[];
      mostCommon:      MostCommon;
      source:          string;
      contextProvided: string;
  }
  
  interface MostCommon {
      expansion:   string;
      description: string;
      category:    string;
  }

  export default class acronymexpanderWrapper {
    constructor(options: acronymexpanderOptions);

    execute(callback: (error: any, data: acronymexpanderResponse | null) => void): Promise<acronymexpanderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: acronymexpanderResponse | null) => void): Promise<acronymexpanderResponse>;
    execute(query?: Record<string, any>): Promise<acronymexpanderResponse>;
  }
}
