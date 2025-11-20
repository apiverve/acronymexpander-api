declare module '@apiverve/acronymexpander' {
  export interface acronymexpanderOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface acronymexpanderResponse {
    status: string;
    error: string | null;
    data: any;
    code?: number;
  }

  export default class acronymexpanderWrapper {
    constructor(options: acronymexpanderOptions);

    execute(callback: (error: any, data: acronymexpanderResponse | null) => void): Promise<acronymexpanderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: acronymexpanderResponse | null) => void): Promise<acronymexpanderResponse>;
    execute(query?: Record<string, any>): Promise<acronymexpanderResponse>;
  }
}
